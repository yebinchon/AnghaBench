
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_net {TYPE_2__* nfsd_serv; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int sv_nrpools; TYPE_1__* sv_pools; } ;
struct TYPE_3__ {int sp_nrthreads; } ;


 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;

int nfsd_get_nrthreads(int n, int *nthreads, struct net *net)
{
 int i = 0;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 if (nn->nfsd_serv != ((void*)0)) {
  for (i = 0; i < nn->nfsd_serv->sv_nrpools && i < n; i++)
   nthreads[i] = nn->nfsd_serv->sv_pools[i].sp_nrthreads;
 }

 return 0;
}
