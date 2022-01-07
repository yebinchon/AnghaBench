
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal {scalar_t__ j_free_bitmap_nodes; int j_bitmap_nodes; int j_used_bitmap_nodes; } ;
struct reiserfs_bitmap_node {int list; struct reiserfs_bitmap_node* data; } ;


 scalar_t__ REISERFS_MAX_BITMAP_NODES ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int kfree (struct reiserfs_bitmap_node*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static inline void free_bitmap_node(struct super_block *sb,
        struct reiserfs_bitmap_node *bn)
{
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 journal->j_used_bitmap_nodes--;
 if (journal->j_free_bitmap_nodes > REISERFS_MAX_BITMAP_NODES) {
  kfree(bn->data);
  kfree(bn);
 } else {
  list_add(&bn->list, &journal->j_bitmap_nodes);
  journal->j_free_bitmap_nodes++;
 }
}
