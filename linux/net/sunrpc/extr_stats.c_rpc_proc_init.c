
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int * proc_net_rpc; } ;
struct net {int proc_net; } ;


 int ENOMEM ;
 int dprintk (char*) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int * proc_mkdir (char*,int ) ;
 int sunrpc_net_id ;

int rpc_proc_init(struct net *net)
{
 struct sunrpc_net *sn;

 dprintk("RPC:       registering /proc/net/rpc\n");
 sn = net_generic(net, sunrpc_net_id);
 sn->proc_net_rpc = proc_mkdir("rpc", net->proc_net);
 if (sn->proc_net_rpc == ((void*)0))
  return -ENOMEM;

 return 0;
}
