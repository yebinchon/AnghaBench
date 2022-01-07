
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ext4_free_extent {int fe_start; int fe_len; scalar_t__ fe_group; } ;
struct ext4_buddy {scalar_t__ bd_group; int bd_bitmap; TYPE_2__* bd_info; TYPE_1__* bd_sb; } ;
struct TYPE_8__ {int* s_mb_maxs; } ;
struct TYPE_7__ {int bb_free; int bb_first_free; int * bb_counters; int bb_fragments; } ;
struct TYPE_6__ {int s_blocksize; } ;


 int BUG_ON (int) ;
 TYPE_4__* EXT4_SB (TYPE_1__*) ;
 int assert_spin_locked (int ) ;
 int ext4_group_lock_ptr (TYPE_1__*,scalar_t__) ;
 int ext4_set_bits (int ,int,int) ;
 int mb_check_buddy (struct ext4_buddy*) ;
 int mb_clear_bit (int,void*) ;
 void* mb_find_buddy (struct ext4_buddy*,int,int*) ;
 int mb_find_order_for_block (struct ext4_buddy*,int) ;
 int mb_mark_used_double (struct ext4_buddy*,int,int) ;
 int mb_set_bit (int,void*) ;
 int mb_set_largest_free_order (TYPE_1__*,TYPE_2__*) ;
 int mb_test_bit (int,int ) ;

__attribute__((used)) static int mb_mark_used(struct ext4_buddy *e4b, struct ext4_free_extent *ex)
{
 int ord;
 int mlen = 0;
 int max = 0;
 int cur;
 int start = ex->fe_start;
 int len = ex->fe_len;
 unsigned ret = 0;
 int len0 = len;
 void *buddy;

 BUG_ON(start + len > (e4b->bd_sb->s_blocksize << 3));
 BUG_ON(e4b->bd_group != ex->fe_group);
 assert_spin_locked(ext4_group_lock_ptr(e4b->bd_sb, e4b->bd_group));
 mb_check_buddy(e4b);
 mb_mark_used_double(e4b, start, len);

 e4b->bd_info->bb_free -= len;
 if (e4b->bd_info->bb_first_free == start)
  e4b->bd_info->bb_first_free += len;


 if (start != 0)
  mlen = !mb_test_bit(start - 1, e4b->bd_bitmap);
 if (start + len < EXT4_SB(e4b->bd_sb)->s_mb_maxs[0])
  max = !mb_test_bit(start + len, e4b->bd_bitmap);
 if (mlen && max)
  e4b->bd_info->bb_fragments++;
 else if (!mlen && !max)
  e4b->bd_info->bb_fragments--;


 while (len) {
  ord = mb_find_order_for_block(e4b, start);

  if (((start >> ord) << ord) == start && len >= (1 << ord)) {

   mlen = 1 << ord;
   buddy = mb_find_buddy(e4b, ord, &max);
   BUG_ON((start >> ord) >= max);
   mb_set_bit(start >> ord, buddy);
   e4b->bd_info->bb_counters[ord]--;
   start += mlen;
   len -= mlen;
   BUG_ON(len < 0);
   continue;
  }


  if (ret == 0)
   ret = len | (ord << 16);


  BUG_ON(ord <= 0);
  buddy = mb_find_buddy(e4b, ord, &max);
  mb_set_bit(start >> ord, buddy);
  e4b->bd_info->bb_counters[ord]--;

  ord--;
  cur = (start >> ord) & ~1U;
  buddy = mb_find_buddy(e4b, ord, &max);
  mb_clear_bit(cur, buddy);
  mb_clear_bit(cur + 1, buddy);
  e4b->bd_info->bb_counters[ord]++;
  e4b->bd_info->bb_counters[ord]++;
 }
 mb_set_largest_free_order(e4b->bd_sb, e4b->bd_info);

 ext4_set_bits(e4b->bd_bitmap, ex->fe_start, len0);
 mb_check_buddy(e4b);

 return ret;
}
