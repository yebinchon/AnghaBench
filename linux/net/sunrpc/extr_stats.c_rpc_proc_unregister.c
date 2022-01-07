
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int proc_net_rpc; } ;
struct net {int dummy; } ;


 struct sunrpc_net* net_generic (struct net*,int ) ;
 int remove_proc_entry (char const*,int ) ;
 int sunrpc_net_id ;

void
rpc_proc_unregister(struct net *net, const char *name)
{
 struct sunrpc_net *sn;

 sn = net_generic(net, sunrpc_net_id);
 remove_proc_entry(name, sn->proc_net_rpc);
}
