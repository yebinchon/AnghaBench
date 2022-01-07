
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int pipefs_sb_lock; } ;
struct rpc_pipe_dir_object {int pdo_head; } ;
struct rpc_pipe_dir_head {int dummy; } ;
struct net {int dummy; } ;


 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int rpc_add_pipe_dir_object_locked (struct net*,struct rpc_pipe_dir_head*,struct rpc_pipe_dir_object*) ;
 int sunrpc_net_id ;

int
rpc_add_pipe_dir_object(struct net *net,
  struct rpc_pipe_dir_head *pdh,
  struct rpc_pipe_dir_object *pdo)
{
 int ret = 0;

 if (list_empty(&pdo->pdo_head)) {
  struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

  mutex_lock(&sn->pipefs_sb_lock);
  ret = rpc_add_pipe_dir_object_locked(net, pdh, pdo);
  mutex_unlock(&sn->pipefs_sb_lock);
 }
 return ret;
}
