
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int journal_t ;
struct TYPE_2__ {int journal_info; } ;


 int J_ASSERT (int) ;
 int __jbd2_journal_force_commit (int *) ;
 TYPE_1__* current ;

int jbd2_journal_force_commit(journal_t *journal)
{
 int ret;

 J_ASSERT(!current->journal_info);
 ret = __jbd2_journal_force_commit(journal);
 if (ret > 0)
  ret = 0;
 return ret;
}
