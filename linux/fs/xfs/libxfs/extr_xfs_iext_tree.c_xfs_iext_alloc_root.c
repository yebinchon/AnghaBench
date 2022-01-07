
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int if_root; } ;
struct xfs_ifork {scalar_t__ if_bytes; int if_height; TYPE_1__ if_u1; } ;
struct xfs_iext_rec {int dummy; } ;
struct xfs_iext_cursor {scalar_t__ pos; int leaf; } ;


 int ASSERT (int) ;
 int KM_NOFS ;
 int kmem_zalloc (int,int ) ;

__attribute__((used)) static void
xfs_iext_alloc_root(
 struct xfs_ifork *ifp,
 struct xfs_iext_cursor *cur)
{
 ASSERT(ifp->if_bytes == 0);

 ifp->if_u1.if_root = kmem_zalloc(sizeof(struct xfs_iext_rec), KM_NOFS);
 ifp->if_height = 1;


 cur->leaf = ifp->if_u1.if_root;
 cur->pos = 0;
}
