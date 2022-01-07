
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct msdos_dir_entry {int dummy; } ;
struct buffer_head {scalar_t__ b_data; scalar_t__ b_blocknr; } ;
typedef int loff_t ;
struct TYPE_2__ {int dir_per_block_bits; } ;


 TYPE_1__* MSDOS_SB (struct super_block*) ;

__attribute__((used)) static inline loff_t fat_make_i_pos(struct super_block *sb,
        struct buffer_head *bh,
        struct msdos_dir_entry *de)
{
 return ((loff_t)bh->b_blocknr << MSDOS_SB(sb)->dir_per_block_bits)
  | (de - (struct msdos_dir_entry *)bh->b_data);
}
