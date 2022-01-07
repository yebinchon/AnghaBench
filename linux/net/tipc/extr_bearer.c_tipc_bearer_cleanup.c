
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int notifier ;
 int unregister_netdevice_notifier (int *) ;

void tipc_bearer_cleanup(void)
{
 unregister_netdevice_notifier(&notifier);
}
