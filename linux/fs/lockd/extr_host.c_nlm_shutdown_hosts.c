
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintk (char*) ;
 int nlm_shutdown_hosts_net (int *) ;

void
nlm_shutdown_hosts(void)
{
 dprintk("lockd: shutting down host module\n");
 nlm_shutdown_hosts_net(((void*)0));
}
