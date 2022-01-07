
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_list_bitmap {int * bitmaps; int * journal_list; } ;


 int JOURNAL_NUM_BITMAPS ;
 int cleanup_bitmap_list (struct super_block*,struct reiserfs_list_bitmap*) ;
 int vfree (int *) ;

__attribute__((used)) static int free_list_bitmaps(struct super_block *sb,
        struct reiserfs_list_bitmap *jb_array)
{
 int i;
 struct reiserfs_list_bitmap *jb;
 for (i = 0; i < JOURNAL_NUM_BITMAPS; i++) {
  jb = jb_array + i;
  jb->journal_list = ((void*)0);
  cleanup_bitmap_list(sb, jb);
  vfree(jb->bitmaps);
  jb->bitmaps = ((void*)0);
 }
 return 0;
}
