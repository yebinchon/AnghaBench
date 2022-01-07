
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int * gssp_clnt; int gssp_lock; } ;


 int mutex_init (int *) ;

void init_gssp_clnt(struct sunrpc_net *sn)
{
 mutex_init(&sn->gssp_lock);
 sn->gssp_clnt = ((void*)0);
}
