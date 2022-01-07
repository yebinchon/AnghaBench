
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int pipe_version; int pipe_users; } ;
struct net {int dummy; } ;


 int EAGAIN ;
 int atomic_inc (int *) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int pipe_version_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sunrpc_net_id ;

__attribute__((used)) static int get_pipe_version(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 int ret;

 spin_lock(&pipe_version_lock);
 if (sn->pipe_version >= 0) {
  atomic_inc(&sn->pipe_users);
  ret = sn->pipe_version;
 } else
  ret = -EAGAIN;
 spin_unlock(&pipe_version_lock);
 return ret;
}
