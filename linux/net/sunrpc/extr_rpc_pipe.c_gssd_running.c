
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {struct rpc_pipe* gssd_dummy; } ;
struct rpc_pipe {scalar_t__ nwriters; scalar_t__ nreaders; } ;
struct net {int dummy; } ;


 struct sunrpc_net* net_generic (struct net*,int ) ;
 int sunrpc_net_id ;

bool
gssd_running(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 struct rpc_pipe *pipe = sn->gssd_dummy;

 return pipe->nreaders || pipe->nwriters;
}
