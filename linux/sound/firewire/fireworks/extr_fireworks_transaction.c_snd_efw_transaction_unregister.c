
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int fw_core_remove_address_handler (int *) ;
 int list_empty (int *) ;
 int resp_register_handler ;
 int transaction_queues ;

void snd_efw_transaction_unregister(void)
{
 WARN_ON(!list_empty(&transaction_queues));
 fw_core_remove_address_handler(&resp_register_handler);
}
