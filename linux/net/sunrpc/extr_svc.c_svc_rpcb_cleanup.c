
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct net {int dummy; } ;


 int rpcb_put_local (struct net*) ;
 int svc_unregister (struct svc_serv*,struct net*) ;

void svc_rpcb_cleanup(struct svc_serv *serv, struct net *net)
{
 svc_unregister(serv, net);
 rpcb_put_local(net);
}
