
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_journal {int j_state; } ;


 int J_ABORTED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int __reiserfs_is_journal_aborted(struct reiserfs_journal
      *journal)
{
 return test_bit(J_ABORTED, &journal->j_state);
}
