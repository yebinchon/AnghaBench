
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_net {TYPE_1__* nfsd_serv; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int sv_nrthreads; } ;


 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;
 int svc_destroy (TYPE_1__*) ;
 int svc_shutdown_net (TYPE_1__*,struct net*) ;

void nfsd_destroy(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 int destroy = (nn->nfsd_serv->sv_nrthreads == 1);

 if (destroy)
  svc_shutdown_net(nn->nfsd_serv, net);
 svc_destroy(nn->nfsd_serv);
 if (destroy)
  nn->nfsd_serv = ((void*)0);
}
