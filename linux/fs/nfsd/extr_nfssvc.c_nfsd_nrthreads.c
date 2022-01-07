
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {TYPE_1__* nfsd_serv; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int sv_nrthreads; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_mutex ;
 int nfsd_net_id ;

int nfsd_nrthreads(struct net *net)
{
 int rv = 0;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 mutex_lock(&nfsd_mutex);
 if (nn->nfsd_serv)
  rv = nn->nfsd_serv->sv_nrthreads;
 mutex_unlock(&nfsd_mutex);
 return rv;
}
