
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int proc_net; } ;


 int dprintk (char*) ;
 int remove_proc_entry (char*,int ) ;

void rpc_proc_exit(struct net *net)
{
 dprintk("RPC:       unregistering /proc/net/rpc\n");
 remove_proc_entry("rpc", net->proc_net);
}
