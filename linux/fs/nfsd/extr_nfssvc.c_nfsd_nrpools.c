
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {TYPE_1__* nfsd_serv; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int sv_nrpools; } ;


 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;

int nfsd_nrpools(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 if (nn->nfsd_serv == ((void*)0))
  return 0;
 else
  return nn->nfsd_serv->sv_nrpools;
}
