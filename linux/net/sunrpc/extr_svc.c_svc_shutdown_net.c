
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_serv {TYPE_1__* sv_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* svo_shutdown ) (struct svc_serv*,struct net*) ;} ;


 int stub1 (struct svc_serv*,struct net*) ;
 int svc_close_net (struct svc_serv*,struct net*) ;

void svc_shutdown_net(struct svc_serv *serv, struct net *net)
{
 svc_close_net(serv, net);

 if (serv->sv_ops->svo_shutdown)
  serv->sv_ops->svo_shutdown(serv, net);
}
