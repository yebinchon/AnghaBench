
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int gssp_lock; struct rpc_clnt* gssp_clnt; } ;
struct rpc_clnt {int dummy; } ;
struct net {int dummy; } ;


 int gssp_rpc_create (struct net*,struct rpc_clnt**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int rpc_shutdown_client (struct rpc_clnt*) ;
 int sunrpc_net_id ;

int set_gssp_clnt(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 struct rpc_clnt *clnt;
 int ret;

 mutex_lock(&sn->gssp_lock);
 ret = gssp_rpc_create(net, &clnt);
 if (!ret) {
  if (sn->gssp_clnt)
   rpc_shutdown_client(sn->gssp_clnt);
  sn->gssp_clnt = clnt;
 }
 mutex_unlock(&sn->gssp_lock);
 return ret;
}
