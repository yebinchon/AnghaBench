
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int * if_data; } ;
struct xfs_ifork {int if_bytes; TYPE_1__ if_u1; } ;


 int ASSERT (int) ;
 int KM_NOFS ;
 struct xfs_ifork* XFS_IFORK_PTR (struct xfs_inode*,int) ;
 int XFS_IFORK_SIZE (struct xfs_inode*,int) ;
 int kmem_free (int *) ;
 int * kmem_realloc (int *,int ,int ) ;
 int roundup (int,int) ;

void
xfs_idata_realloc(
 struct xfs_inode *ip,
 int byte_diff,
 int whichfork)
{
 struct xfs_ifork *ifp = XFS_IFORK_PTR(ip, whichfork);
 int new_size = (int)ifp->if_bytes + byte_diff;

 ASSERT(new_size >= 0);
 ASSERT(new_size <= XFS_IFORK_SIZE(ip, whichfork));

 if (byte_diff == 0)
  return;

 if (new_size == 0) {
  kmem_free(ifp->if_u1.if_data);
  ifp->if_u1.if_data = ((void*)0);
  ifp->if_bytes = 0;
  return;
 }






 ifp->if_u1.if_data = kmem_realloc(ifp->if_u1.if_data,
   roundup(new_size, 4), KM_NOFS);
 ifp->if_bytes = new_size;
}
