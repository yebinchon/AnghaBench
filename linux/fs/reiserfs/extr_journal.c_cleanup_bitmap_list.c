
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_list_bitmap {int ** bitmaps; } ;


 int free_bitmap_node (struct super_block*,int *) ;
 int reiserfs_bmap_count (struct super_block*) ;

__attribute__((used)) static void cleanup_bitmap_list(struct super_block *sb,
    struct reiserfs_list_bitmap *jb)
{
 int i;
 if (jb->bitmaps == ((void*)0))
  return;

 for (i = 0; i < reiserfs_bmap_count(sb); i++) {
  if (jb->bitmaps[i]) {
   free_bitmap_node(sb, jb->bitmaps[i]);
   jb->bitmaps[i] = ((void*)0);
  }
 }
}
