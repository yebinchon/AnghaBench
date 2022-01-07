
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int * b_maps; int __b_map; } ;


 int kmem_free (int *) ;

__attribute__((used)) static void
xfs_buf_free_maps(
 struct xfs_buf *bp)
{
 if (bp->b_maps != &bp->__b_map) {
  kmem_free(bp->b_maps);
  bp->b_maps = ((void*)0);
 }
}
