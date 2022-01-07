
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct net {int dummy; } ;


 int svc_rpcb_setup (struct svc_serv*,struct net*) ;
 int svc_uses_rpcbind (struct svc_serv*) ;

int svc_bind(struct svc_serv *serv, struct net *net)
{
 if (!svc_uses_rpcbind(serv))
  return 0;
 return svc_rpcb_setup(serv, net);
}
