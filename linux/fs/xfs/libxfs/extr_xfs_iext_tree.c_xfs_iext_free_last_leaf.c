
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * if_root; } ;
struct xfs_ifork {TYPE_1__ if_u1; int if_height; } ;


 int kmem_free (int *) ;

__attribute__((used)) static void
xfs_iext_free_last_leaf(
 struct xfs_ifork *ifp)
{
 ifp->if_height--;
 kmem_free(ifp->if_u1.if_root);
 ifp->if_u1.if_root = ((void*)0);
}
