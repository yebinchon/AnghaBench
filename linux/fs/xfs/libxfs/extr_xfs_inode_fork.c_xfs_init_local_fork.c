
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_inode {int dummy; } ;
struct TYPE_3__ {char* if_data; } ;
struct xfs_ifork {int if_bytes; int if_flags; TYPE_1__ if_u1; } ;
struct TYPE_4__ {int i_mode; } ;


 int KM_NOFS ;
 int S_ISLNK (int ) ;
 TYPE_2__* VFS_I (struct xfs_inode*) ;
 int XFS_IFBROOT ;
 int XFS_IFEXTENTS ;
 int XFS_IFINLINE ;
 struct xfs_ifork* XFS_IFORK_PTR (struct xfs_inode*,int) ;
 char* kmem_alloc (int,int ) ;
 int memcpy (char*,void const*,int) ;
 int roundup (int,int) ;

void
xfs_init_local_fork(
 struct xfs_inode *ip,
 int whichfork,
 const void *data,
 int size)
{
 struct xfs_ifork *ifp = XFS_IFORK_PTR(ip, whichfork);
 int mem_size = size, real_size = 0;
 bool zero_terminate;







 zero_terminate = S_ISLNK(VFS_I(ip)->i_mode);
 if (zero_terminate)
  mem_size++;

 if (size) {
  real_size = roundup(mem_size, 4);
  ifp->if_u1.if_data = kmem_alloc(real_size, KM_NOFS);
  memcpy(ifp->if_u1.if_data, data, size);
  if (zero_terminate)
   ifp->if_u1.if_data[size] = '\0';
 } else {
  ifp->if_u1.if_data = ((void*)0);
 }

 ifp->if_bytes = size;
 ifp->if_flags &= ~(XFS_IFEXTENTS | XFS_IFBROOT);
 ifp->if_flags |= XFS_IFINLINE;
}
