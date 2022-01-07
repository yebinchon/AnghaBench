
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int journal_t ;


 int __journal_abort_soft (int *,int) ;

void jbd2_journal_abort(journal_t *journal, int errno)
{
 __journal_abort_soft(journal, errno);
}
