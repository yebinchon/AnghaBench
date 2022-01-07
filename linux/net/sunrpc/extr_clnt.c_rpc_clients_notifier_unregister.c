
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rpc_clients_block ;
 void rpc_pipefs_notifier_unregister (int *) ;

void rpc_clients_notifier_unregister(void)
{
 return rpc_pipefs_notifier_unregister(&rpc_clients_block);
}
