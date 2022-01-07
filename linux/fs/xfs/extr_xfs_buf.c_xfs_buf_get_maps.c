
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf_map {int dummy; } ;
struct xfs_buf {int b_map_count; int * b_maps; int __b_map; } ;


 int ASSERT (int ) ;
 int ENOMEM ;
 int KM_NOFS ;
 int * kmem_zalloc (int,int ) ;

__attribute__((used)) static int
xfs_buf_get_maps(
 struct xfs_buf *bp,
 int map_count)
{
 ASSERT(bp->b_maps == ((void*)0));
 bp->b_map_count = map_count;

 if (map_count == 1) {
  bp->b_maps = &bp->__b_map;
  return 0;
 }

 bp->b_maps = kmem_zalloc(map_count * sizeof(struct xfs_buf_map),
    KM_NOFS);
 if (!bp->b_maps)
  return -ENOMEM;
 return 0;
}
