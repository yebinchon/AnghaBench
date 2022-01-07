
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {TYPE_1__* client_tracking_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* exit ) (struct net*) ;} ;


 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;
 int stub1 (struct net*) ;

void
nfsd4_client_tracking_exit(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 if (nn->client_tracking_ops) {
  if (nn->client_tracking_ops->exit)
   nn->client_tracking_ops->exit(net);
  nn->client_tracking_ops = ((void*)0);
 }
}
