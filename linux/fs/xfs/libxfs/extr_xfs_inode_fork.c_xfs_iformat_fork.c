
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_fsize_t ;
struct TYPE_4__ {int totsize; } ;
struct xfs_attr_shortform {TYPE_2__ hdr; } ;
typedef struct xfs_attr_shortform xfs_attr_shortform_t ;
struct TYPE_3__ {int di_size; } ;
struct xfs_inode {int * i_cowfp; int * i_afp; TYPE_1__ i_d; } ;
struct xfs_dinode {int di_aformat; int di_size; int di_format; } ;
struct inode {int i_mode; int i_rdev; } ;


 int ASSERT (int ) ;
 int EFSCORRUPTED ;
 int KM_NOFS ;





 int S_IFMT ;


 struct inode* VFS_I (struct xfs_inode*) ;
 int XFS_ATTR_FORK ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DFORK_APTR (struct xfs_dinode*) ;
 int XFS_DFORK_Q (struct xfs_dinode*) ;



 int be16_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int kmem_zone_free (int ,int *) ;
 int * kmem_zone_zalloc (int ,int ) ;
 int xfs_dinode_get_rdev (struct xfs_dinode*) ;
 int xfs_idestroy_fork (struct xfs_inode*,int ) ;
 int xfs_ifork_init_cow (struct xfs_inode*) ;
 int xfs_ifork_zone ;
 int xfs_iformat_btree (struct xfs_inode*,struct xfs_dinode*,int ) ;
 int xfs_iformat_extents (struct xfs_inode*,struct xfs_dinode*,int ) ;
 int xfs_iformat_local (struct xfs_inode*,struct xfs_dinode*,int ,int) ;
 scalar_t__ xfs_is_reflink_inode (struct xfs_inode*) ;
 int xfs_to_linux_dev_t (int ) ;

int
xfs_iformat_fork(
 struct xfs_inode *ip,
 struct xfs_dinode *dip)
{
 struct inode *inode = VFS_I(ip);
 struct xfs_attr_shortform *atp;
 int size;
 int error = 0;
 xfs_fsize_t di_size;

 switch (inode->i_mode & S_IFMT) {
 case 134:
 case 136:
 case 137:
 case 131:
  ip->i_d.di_size = 0;
  inode->i_rdev = xfs_to_linux_dev_t(xfs_dinode_get_rdev(dip));
  break;

 case 132:
 case 133:
 case 135:
  switch (dip->di_format) {
  case 128:
   di_size = be64_to_cpu(dip->di_size);
   size = (int)di_size;
   error = xfs_iformat_local(ip, dip, XFS_DATA_FORK, size);
   break;
  case 129:
   error = xfs_iformat_extents(ip, dip, XFS_DATA_FORK);
   break;
  case 130:
   error = xfs_iformat_btree(ip, dip, XFS_DATA_FORK);
   break;
  default:
   return -EFSCORRUPTED;
  }
  break;

 default:
  return -EFSCORRUPTED;
 }
 if (error)
  return error;

 if (xfs_is_reflink_inode(ip)) {
  ASSERT(ip->i_cowfp == ((void*)0));
  xfs_ifork_init_cow(ip);
 }

 if (!XFS_DFORK_Q(dip))
  return 0;

 ASSERT(ip->i_afp == ((void*)0));
 ip->i_afp = kmem_zone_zalloc(xfs_ifork_zone, KM_NOFS);

 switch (dip->di_aformat) {
 case 128:
  atp = (xfs_attr_shortform_t *)XFS_DFORK_APTR(dip);
  size = be16_to_cpu(atp->hdr.totsize);

  error = xfs_iformat_local(ip, dip, XFS_ATTR_FORK, size);
  break;
 case 129:
  error = xfs_iformat_extents(ip, dip, XFS_ATTR_FORK);
  break;
 case 130:
  error = xfs_iformat_btree(ip, dip, XFS_ATTR_FORK);
  break;
 default:
  error = -EFSCORRUPTED;
  break;
 }
 if (error) {
  kmem_zone_free(xfs_ifork_zone, ip->i_afp);
  ip->i_afp = ((void*)0);
  if (ip->i_cowfp)
   kmem_zone_free(xfs_ifork_zone, ip->i_cowfp);
  ip->i_cowfp = ((void*)0);
  xfs_idestroy_fork(ip, XFS_DATA_FORK);
 }
 return error;
}
