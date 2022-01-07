
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal {int j_free_bitmap_nodes; int j_bitmap_nodes; } ;
struct reiserfs_bitmap_node {int list; } ;


 int REISERFS_MIN_BITMAP_NODES ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 struct reiserfs_bitmap_node* allocate_bitmap_node (struct super_block*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static void allocate_bitmap_nodes(struct super_block *sb)
{
 int i;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 struct reiserfs_bitmap_node *bn = ((void*)0);
 for (i = 0; i < REISERFS_MIN_BITMAP_NODES; i++) {
  bn = allocate_bitmap_node(sb);
  if (bn) {
   list_add(&bn->list, &journal->j_bitmap_nodes);
   journal->j_free_bitmap_nodes++;
  } else {

   break;
  }
 }
}
