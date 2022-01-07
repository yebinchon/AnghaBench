
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int gssp_lock; struct rpc_clnt* gssp_clnt; } ;
struct rpc_clnt {int cl_count; } ;


 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct rpc_clnt *get_gssp_clnt(struct sunrpc_net *sn)
{
 struct rpc_clnt *clnt;

 mutex_lock(&sn->gssp_lock);
 clnt = sn->gssp_clnt;
 if (clnt)
  atomic_inc(&clnt->cl_count);
 mutex_unlock(&sn->gssp_lock);
 return clnt;
}
