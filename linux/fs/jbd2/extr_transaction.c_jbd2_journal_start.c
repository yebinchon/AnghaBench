
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int journal_t ;
typedef int handle_t ;


 int GFP_NOFS ;
 int * jbd2__journal_start (int *,int,int ,int ,int ,int ) ;

handle_t *jbd2_journal_start(journal_t *journal, int nblocks)
{
 return jbd2__journal_start(journal, nblocks, 0, GFP_NOFS, 0, 0);
}
