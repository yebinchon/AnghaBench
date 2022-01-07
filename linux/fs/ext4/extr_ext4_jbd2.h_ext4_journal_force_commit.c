
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int journal_t ;


 int jbd2_journal_force_commit (int *) ;

__attribute__((used)) static inline int ext4_journal_force_commit(journal_t *journal)
{
 if (journal)
  return jbd2_journal_force_commit(journal);
 return 0;
}
