
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ext4_journal_cb_entry {int jce_list; } ;
struct TYPE_5__ {TYPE_1__* h_transaction; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_4__ {int t_private_list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void _ext4_journal_callback_add(handle_t *handle,
   struct ext4_journal_cb_entry *jce)
{

 list_add_tail(&jce->jce_list, &handle->h_transaction->t_private_list);
}
