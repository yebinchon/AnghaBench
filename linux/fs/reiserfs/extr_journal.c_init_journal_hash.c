
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_cnode {int dummy; } ;
struct reiserfs_journal {int j_hash_table; } ;


 int JOURNAL_HASH_SIZE ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void init_journal_hash(struct super_block *sb)
{
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 memset(journal->j_hash_table, 0,
        JOURNAL_HASH_SIZE * sizeof(struct reiserfs_journal_cnode *));
}
