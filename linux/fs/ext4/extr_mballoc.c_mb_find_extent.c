
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_free_extent {int fe_len; int fe_start; int fe_group; int fe_logical; } ;
struct ext4_buddy {void* bd_bitmap; int bd_sb; int bd_group; } ;


 int BUG_ON (int) ;
 scalar_t__ EXT4_CLUSTERS_PER_GROUP (int ) ;
 int WARN_ON (int) ;
 int assert_spin_locked (int ) ;
 int ext4_error (int ,char*,int,int,int,int ,scalar_t__,scalar_t__,int ) ;
 int ext4_group_lock_ptr (int ,int ) ;
 void* mb_find_buddy (struct ext4_buddy*,int,int*) ;
 int mb_find_order_for_block (struct ext4_buddy*,int) ;
 scalar_t__ mb_test_bit (int,void*) ;

__attribute__((used)) static int mb_find_extent(struct ext4_buddy *e4b, int block,
    int needed, struct ext4_free_extent *ex)
{
 int next = block;
 int max, order;
 void *buddy;

 assert_spin_locked(ext4_group_lock_ptr(e4b->bd_sb, e4b->bd_group));
 BUG_ON(ex == ((void*)0));

 buddy = mb_find_buddy(e4b, 0, &max);
 BUG_ON(buddy == ((void*)0));
 BUG_ON(block >= max);
 if (mb_test_bit(block, buddy)) {
  ex->fe_len = 0;
  ex->fe_start = 0;
  ex->fe_group = 0;
  return 0;
 }


 order = mb_find_order_for_block(e4b, block);
 block = block >> order;

 ex->fe_len = 1 << order;
 ex->fe_start = block << order;
 ex->fe_group = e4b->bd_group;


 next = next - ex->fe_start;
 ex->fe_len -= next;
 ex->fe_start += next;

 while (needed > ex->fe_len &&
        mb_find_buddy(e4b, order, &max)) {

  if (block + 1 >= max)
   break;

  next = (block + 1) * (1 << order);
  if (mb_test_bit(next, e4b->bd_bitmap))
   break;

  order = mb_find_order_for_block(e4b, next);

  block = next >> order;
  ex->fe_len += 1 << order;
 }

 if (ex->fe_start + ex->fe_len > EXT4_CLUSTERS_PER_GROUP(e4b->bd_sb)) {

  WARN_ON(1);
  ext4_error(e4b->bd_sb, "corruption or bug in mb_find_extent "
      "block=%d, order=%d needed=%d ex=%u/%d/%d@%u",
      block, order, needed, ex->fe_group, ex->fe_start,
      ex->fe_len, ex->fe_logical);
  ex->fe_len = 0;
  ex->fe_start = 0;
  ex->fe_group = 0;
 }
 return ex->fe_len;
}
