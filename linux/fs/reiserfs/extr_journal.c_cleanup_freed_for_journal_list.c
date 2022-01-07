
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_list_bitmap {int * journal_list; } ;
struct reiserfs_journal_list {struct reiserfs_list_bitmap* j_list_bitmap; } ;


 int cleanup_bitmap_list (struct super_block*,struct reiserfs_list_bitmap*) ;

__attribute__((used)) static void cleanup_freed_for_journal_list(struct super_block *sb,
        struct reiserfs_journal_list *jl)
{

 struct reiserfs_list_bitmap *jb = jl->j_list_bitmap;
 if (jb) {
  cleanup_bitmap_list(sb, jb);
 }
 jl->j_list_bitmap->journal_list = ((void*)0);
 jl->j_list_bitmap = ((void*)0);
}
