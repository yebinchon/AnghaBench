
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int gssd_dummy; } ;
struct net {int dummy; } ;


 struct sunrpc_net* net_generic (struct net*,int ) ;
 int rpc_destroy_pipe_data (int ) ;
 int sunrpc_net_id ;

void rpc_pipefs_exit_net(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 rpc_destroy_pipe_data(sn->gssd_dummy);
}
