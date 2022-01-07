
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct xfs_bitmap_range {int list; void* len; void* start; } ;
struct xfs_bitmap {int list; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int KM_MAYFAIL ;
 struct xfs_bitmap_range* kmem_alloc (int,int ) ;
 int list_add_tail (int *,int *) ;

int
xfs_bitmap_set(
 struct xfs_bitmap *bitmap,
 uint64_t start,
 uint64_t len)
{
 struct xfs_bitmap_range *bmr;

 bmr = kmem_alloc(sizeof(struct xfs_bitmap_range), KM_MAYFAIL);
 if (!bmr)
  return -ENOMEM;

 INIT_LIST_HEAD(&bmr->list);
 bmr->start = start;
 bmr->len = len;
 list_add_tail(&bmr->list, &bitmap->list);

 return 0;
}
