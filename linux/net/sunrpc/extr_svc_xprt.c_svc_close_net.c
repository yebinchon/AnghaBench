
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int sv_tempsocks; int sv_permsocks; } ;
struct net {int dummy; } ;


 int msleep (int ) ;
 int svc_clean_up_xprts (struct svc_serv*,struct net*) ;
 scalar_t__ svc_close_list (struct svc_serv*,int *,struct net*) ;

void svc_close_net(struct svc_serv *serv, struct net *net)
{
 int delay = 0;

 while (svc_close_list(serv, &serv->sv_permsocks, net) +
        svc_close_list(serv, &serv->sv_tempsocks, net)) {

  svc_clean_up_xprts(serv, net);
  msleep(delay++);
 }
}
