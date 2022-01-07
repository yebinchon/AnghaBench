
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rpc_clients_block ;
 int rpc_pipefs_notifier_register (int *) ;

int rpc_clients_notifier_register(void)
{
 return rpc_pipefs_notifier_register(&rpc_clients_block);
}
