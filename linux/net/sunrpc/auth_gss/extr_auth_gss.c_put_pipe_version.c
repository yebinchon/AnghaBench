
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int pipe_version; int pipe_users; } ;
struct net {int dummy; } ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int pipe_version_lock ;
 int spin_unlock (int *) ;
 int sunrpc_net_id ;

__attribute__((used)) static void put_pipe_version(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 if (atomic_dec_and_lock(&sn->pipe_users, &pipe_version_lock)) {
  sn->pipe_version = -1;
  spin_unlock(&pipe_version_lock);
 }
}
