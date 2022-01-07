
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal {int j_join_wait; int j_state; } ;


 int J_WRITERS_BLOCKED ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int clear_bit (int ,int *) ;
 int wake_up (int *) ;

void reiserfs_allow_writes(struct super_block *s)
{
 struct reiserfs_journal *journal = SB_JOURNAL(s);
 clear_bit(J_WRITERS_BLOCKED, &journal->j_state);
 wake_up(&journal->j_join_wait);
}
