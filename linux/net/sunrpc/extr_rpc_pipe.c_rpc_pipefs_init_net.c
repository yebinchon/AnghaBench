
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int pipe_version; int pipefs_sb_lock; int gssd_dummy; } ;
struct net {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int gssd_dummy_pipe_ops ;
 int mutex_init (int *) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int rpc_mkpipe_data (int *,int ) ;
 int sunrpc_net_id ;

int rpc_pipefs_init_net(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 sn->gssd_dummy = rpc_mkpipe_data(&gssd_dummy_pipe_ops, 0);
 if (IS_ERR(sn->gssd_dummy))
  return PTR_ERR(sn->gssd_dummy);

 mutex_init(&sn->pipefs_sb_lock);
 sn->pipe_version = -1;
 return 0;
}
