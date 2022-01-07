
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef int secno ;


 int BITS_PER_BYTE ;
 unsigned int bitmap_weight (unsigned long*,int) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 unsigned long* hpfs_map_4sectors (struct super_block*,int ,struct quad_buffer_head*,int ) ;

__attribute__((used)) static unsigned hpfs_count_one_bitmap(struct super_block *s, secno secno)
{
 struct quad_buffer_head qbh;
 unsigned long *bits;
 unsigned count;

 bits = hpfs_map_4sectors(s, secno, &qbh, 0);
 if (!bits)
  return (unsigned)-1;
 count = bitmap_weight(bits, 2048 * BITS_PER_BYTE);
 hpfs_brelse4(&qbh);
 return count;
}
