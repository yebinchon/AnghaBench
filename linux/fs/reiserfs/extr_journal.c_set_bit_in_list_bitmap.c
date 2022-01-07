
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct reiserfs_list_bitmap {TYPE_1__** bitmaps; } ;
typedef int b_blocknr_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 TYPE_1__* get_bitmap_node (struct super_block*) ;
 int set_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static int set_bit_in_list_bitmap(struct super_block *sb,
      b_blocknr_t block,
      struct reiserfs_list_bitmap *jb)
{
 unsigned int bmap_nr = block / (sb->s_blocksize << 3);
 unsigned int bit_nr = block % (sb->s_blocksize << 3);

 if (!jb->bitmaps[bmap_nr]) {
  jb->bitmaps[bmap_nr] = get_bitmap_node(sb);
 }
 set_bit(bit_nr, (unsigned long *)jb->bitmaps[bmap_nr]->data);
 return 0;
}
