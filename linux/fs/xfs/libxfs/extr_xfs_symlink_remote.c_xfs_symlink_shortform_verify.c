
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
struct TYPE_3__ {scalar_t__ di_format; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct TYPE_4__ {scalar_t__ if_data; } ;
struct xfs_ifork {int if_bytes; TYPE_2__ if_u1; } ;


 int ASSERT (int) ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 struct xfs_ifork* XFS_IFORK_PTR (struct xfs_inode*,int ) ;
 int XFS_SYMLINK_MAXLEN ;
 int * __this_address ;
 scalar_t__ memchr (char*,int ,int) ;

xfs_failaddr_t
xfs_symlink_shortform_verify(
 struct xfs_inode *ip)
{
 char *sfp;
 char *endp;
 struct xfs_ifork *ifp;
 int size;

 ASSERT(ip->i_d.di_format == XFS_DINODE_FMT_LOCAL);
 ifp = XFS_IFORK_PTR(ip, XFS_DATA_FORK);
 sfp = (char *)ifp->if_u1.if_data;
 size = ifp->if_bytes;
 endp = sfp + size;





 if (!size)
  return __this_address;


 if (size < 0 || size > XFS_SYMLINK_MAXLEN)
  return __this_address;


 if (memchr(sfp, 0, size - 1))
  return __this_address;


 if (*endp != 0)
  return __this_address;
 return ((void*)0);
}
