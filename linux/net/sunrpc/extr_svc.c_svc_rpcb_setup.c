
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct net {int dummy; } ;


 int rpcb_create_local (struct net*) ;
 int svc_unregister (struct svc_serv*,struct net*) ;

int svc_rpcb_setup(struct svc_serv *serv, struct net *net)
{
 int err;

 err = rpcb_create_local(net);
 if (err)
  return err;


 svc_unregister(serv, net);
 return 0;
}
