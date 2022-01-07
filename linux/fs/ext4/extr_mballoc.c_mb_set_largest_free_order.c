
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
struct ext4_group_info {int bb_largest_free_order; scalar_t__* bb_counters; } ;



__attribute__((used)) static void
mb_set_largest_free_order(struct super_block *sb, struct ext4_group_info *grp)
{
 int i;
 int bits;

 grp->bb_largest_free_order = -1;

 bits = sb->s_blocksize_bits + 1;
 for (i = bits; i >= 0; i--) {
  if (grp->bb_counters[i] > 0) {
   grp->bb_largest_free_order = i;
   break;
  }
 }
}
