
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * if_root; } ;
struct xfs_ifork {TYPE_1__ if_u1; scalar_t__ if_height; scalar_t__ if_bytes; } ;


 int xfs_iext_destroy_node (int *,scalar_t__) ;

void
xfs_iext_destroy(
 struct xfs_ifork *ifp)
{
 xfs_iext_destroy_node(ifp->if_u1.if_root, ifp->if_height);

 ifp->if_bytes = 0;
 ifp->if_height = 0;
 ifp->if_u1.if_root = ((void*)0);
}
