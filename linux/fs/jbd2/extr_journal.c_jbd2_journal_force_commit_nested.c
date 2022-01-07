
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int journal_t ;


 int __jbd2_journal_force_commit (int *) ;

int jbd2_journal_force_commit_nested(journal_t *journal)
{
 int ret;

 ret = __jbd2_journal_force_commit(journal);
 return ret > 0;
}
