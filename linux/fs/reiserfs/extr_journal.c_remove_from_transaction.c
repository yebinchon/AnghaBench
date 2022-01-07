
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_cnode {struct reiserfs_journal_cnode* prev; struct reiserfs_journal_cnode* next; struct buffer_head* bh; } ;
struct reiserfs_journal {int j_len_alloc; int j_len; int j_hash_table; struct reiserfs_journal_cnode* j_last; struct reiserfs_journal_cnode* j_first; } ;
struct buffer_head {int b_count; int b_blocknr; } ;
typedef int b_blocknr_t ;


 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 scalar_t__ atomic_read (int *) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_journal_dirty (struct buffer_head*) ;
 int clear_buffer_journal_test (struct buffer_head*) ;
 int clear_buffer_journaled (struct buffer_head*) ;
 int free_cnode (struct super_block*,struct reiserfs_journal_cnode*) ;
 struct reiserfs_journal_cnode* get_journal_hash_dev (struct super_block*,int ,int ) ;
 int put_bh (struct buffer_head*) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;
 int remove_journal_hash (struct super_block*,int ,int *,int ,int ) ;

__attribute__((used)) static int remove_from_transaction(struct super_block *sb,
       b_blocknr_t blocknr, int already_cleaned)
{
 struct buffer_head *bh;
 struct reiserfs_journal_cnode *cn;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 int ret = 0;

 cn = get_journal_hash_dev(sb, journal->j_hash_table, blocknr);
 if (!cn || !cn->bh) {
  return ret;
 }
 bh = cn->bh;
 if (cn->prev) {
  cn->prev->next = cn->next;
 }
 if (cn->next) {
  cn->next->prev = cn->prev;
 }
 if (cn == journal->j_first) {
  journal->j_first = cn->next;
 }
 if (cn == journal->j_last) {
  journal->j_last = cn->prev;
 }
 remove_journal_hash(sb, journal->j_hash_table, ((void*)0),
       bh->b_blocknr, 0);
 clear_buffer_journaled(bh);

 if (!already_cleaned) {
  clear_buffer_journal_dirty(bh);
  clear_buffer_dirty(bh);
  clear_buffer_journal_test(bh);
  put_bh(bh);
  if (atomic_read(&bh->b_count) < 0) {
   reiserfs_warning(sb, "journal-1752",
      "b_count < 0");
  }
  ret = 1;
 }
 journal->j_len--;
 journal->j_len_alloc--;
 free_cnode(sb, cn);
 return ret;
}
