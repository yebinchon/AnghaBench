
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;


 int GFP_NOFS ;
 int jbd2__journal_restart (int *,int,int ) ;

int jbd2_journal_restart(handle_t *handle, int nblocks)
{
 return jbd2__journal_restart(handle, nblocks, GFP_NOFS);
}
