
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int notifier ;
 int register_netdevice_notifier (int *) ;

int tipc_bearer_setup(void)
{
 return register_netdevice_notifier(&notifier);
}
