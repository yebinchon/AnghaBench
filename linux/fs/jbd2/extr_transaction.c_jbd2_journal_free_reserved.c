
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int journal_t ;
struct TYPE_4__ {int h_buffer_credits; int h_reserved; int * h_journal; } ;
typedef TYPE_1__ handle_t ;


 int WARN_ON (int) ;
 int jbd2_free_handle (TYPE_1__*) ;
 int sub_reserved_credits (int *,int ) ;

void jbd2_journal_free_reserved(handle_t *handle)
{
 journal_t *journal = handle->h_journal;

 WARN_ON(!handle->h_reserved);
 sub_reserved_credits(journal, handle->h_buffer_credits);
 jbd2_free_handle(handle);
}
