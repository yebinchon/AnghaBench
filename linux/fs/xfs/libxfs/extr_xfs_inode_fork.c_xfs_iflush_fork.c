
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int xfs_mount_t ;
struct TYPE_15__ {int * i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_16__ {short const ili_fields; } ;
typedef TYPE_3__ xfs_inode_log_item_t ;
typedef int xfs_dinode_t ;
typedef int xfs_bmdr_block_t ;
typedef int xfs_bmbt_rec_t ;
struct TYPE_14__ {int * if_data; } ;
struct xfs_ifork {int if_flags; int if_broot_bytes; int * if_broot; int if_bytes; TYPE_1__ if_u1; } ;
struct TYPE_13__ {int i_rdev; } ;


 int ASSERT (int) ;
 TYPE_11__* VFS_I (TYPE_2__*) ;
 int XFS_ATTR_FORK ;
 int XFS_BMAP_BMDR_SPACE (int *) ;
 int XFS_DATA_FORK ;
 char* XFS_DFORK_PTR (int *,int) ;
 int XFS_DFORK_SIZE (int *,int *,int) ;




 int XFS_IFEXTENTS ;
 int XFS_IFORK_FORMAT (TYPE_2__*,int) ;
 int XFS_IFORK_NEXTENTS (TYPE_2__*,int) ;
 struct xfs_ifork* XFS_IFORK_PTR (TYPE_2__*,int) ;
 int XFS_IFORK_SIZE (TYPE_2__*,int) ;





 int XFS_ILOG_DEV ;

 int linux_to_xfs_dev_t (int ) ;
 int memcpy (char*,int *,int ) ;
 int xfs_bmbt_to_bmdr (int *,int *,int ,int *,int ) ;
 int xfs_dinode_put_rdev (int *,int ) ;
 int xfs_iextents_copy (TYPE_2__*,int *,int) ;

void
xfs_iflush_fork(
 xfs_inode_t *ip,
 xfs_dinode_t *dip,
 xfs_inode_log_item_t *iip,
 int whichfork)
{
 char *cp;
 struct xfs_ifork *ifp;
 xfs_mount_t *mp;
 static const short brootflag[2] =
  { 130, 133 };
 static const short dataflag[2] =
  { 129, 132 };
 static const short extflag[2] =
  { 128, 131 };

 if (!iip)
  return;
 ifp = XFS_IFORK_PTR(ip, whichfork);




 if (!ifp) {
  ASSERT(whichfork == XFS_ATTR_FORK);
  return;
 }
 cp = XFS_DFORK_PTR(dip, whichfork);
 mp = ip->i_mount;
 switch (XFS_IFORK_FORMAT(ip, whichfork)) {
 case 134:
  if ((iip->ili_fields & dataflag[whichfork]) &&
      (ifp->if_bytes > 0)) {
   ASSERT(ifp->if_u1.if_data != ((void*)0));
   ASSERT(ifp->if_bytes <= XFS_IFORK_SIZE(ip, whichfork));
   memcpy(cp, ifp->if_u1.if_data, ifp->if_bytes);
  }
  break;

 case 135:
  ASSERT((ifp->if_flags & XFS_IFEXTENTS) ||
         !(iip->ili_fields & extflag[whichfork]));
  if ((iip->ili_fields & extflag[whichfork]) &&
      (ifp->if_bytes > 0)) {
   ASSERT(XFS_IFORK_NEXTENTS(ip, whichfork) > 0);
   (void)xfs_iextents_copy(ip, (xfs_bmbt_rec_t *)cp,
    whichfork);
  }
  break;

 case 137:
  if ((iip->ili_fields & brootflag[whichfork]) &&
      (ifp->if_broot_bytes > 0)) {
   ASSERT(ifp->if_broot != ((void*)0));
   ASSERT(XFS_BMAP_BMDR_SPACE(ifp->if_broot) <=
           XFS_IFORK_SIZE(ip, whichfork));
   xfs_bmbt_to_bmdr(mp, ifp->if_broot, ifp->if_broot_bytes,
    (xfs_bmdr_block_t *)cp,
    XFS_DFORK_SIZE(dip, mp, whichfork));
  }
  break;

 case 136:
  if (iip->ili_fields & XFS_ILOG_DEV) {
   ASSERT(whichfork == XFS_DATA_FORK);
   xfs_dinode_put_rdev(dip,
     linux_to_xfs_dev_t(VFS_I(ip)->i_rdev));
  }
  break;

 default:
  ASSERT(0);
  break;
 }
}
