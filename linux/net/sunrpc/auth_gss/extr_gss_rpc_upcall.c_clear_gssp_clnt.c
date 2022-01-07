
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int gssp_lock; int * gssp_clnt; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpc_shutdown_client (int *) ;

void clear_gssp_clnt(struct sunrpc_net *sn)
{
 mutex_lock(&sn->gssp_lock);
 if (sn->gssp_clnt) {
  rpc_shutdown_client(sn->gssp_clnt);
  sn->gssp_clnt = ((void*)0);
 }
 mutex_unlock(&sn->gssp_lock);
}
