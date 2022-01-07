
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_serv {TYPE_1__* sv_ops; } ;
struct nfs_callback_data {scalar_t__ users; struct svc_serv* serv; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* svo_setup ) (struct svc_serv*,int *,int ) ;} ;


 int dprintk (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfs_callback_down_net (int,struct svc_serv*,struct net*) ;
 struct nfs_callback_data* nfs_callback_info ;
 int nfs_callback_mutex ;
 int stub1 (struct svc_serv*,int *,int ) ;
 int svc_destroy (struct svc_serv*) ;
 int svc_get (struct svc_serv*) ;

void nfs_callback_down(int minorversion, struct net *net)
{
 struct nfs_callback_data *cb_info = &nfs_callback_info[minorversion];
 struct svc_serv *serv;

 mutex_lock(&nfs_callback_mutex);
 serv = cb_info->serv;
 nfs_callback_down_net(minorversion, serv, net);
 cb_info->users--;
 if (cb_info->users == 0) {
  svc_get(serv);
  serv->sv_ops->svo_setup(serv, ((void*)0), 0);
  svc_destroy(serv);
  dprintk("nfs_callback_down: service destroyed\n");
  cb_info->serv = ((void*)0);
 }
 mutex_unlock(&nfs_callback_mutex);
}
