
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_net {int nfsd_net_up; TYPE_2__* nfsd_serv; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int sv_nrthreads; TYPE_1__* sv_ops; } ;
struct TYPE_3__ {int (* svo_setup ) (TYPE_2__*,int *,int) ;} ;


 int NFSD_MAXSERVS ;
 int dprintk (char*) ;
 int max (int,int ) ;
 int min (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_create_serv (struct net*) ;
 int nfsd_destroy (struct net*) ;
 int nfsd_mutex ;
 int nfsd_net_id ;
 int nfsd_shutdown_net (struct net*) ;
 int nfsd_startup_net (int,struct net*,struct cred const*) ;
 int stub1 (TYPE_2__*,int *,int) ;

int
nfsd_svc(int nrservs, struct net *net, const struct cred *cred)
{
 int error;
 bool nfsd_up_before;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 mutex_lock(&nfsd_mutex);
 dprintk("nfsd: creating service\n");

 nrservs = max(nrservs, 0);
 nrservs = min(nrservs, NFSD_MAXSERVS);
 error = 0;

 if (nrservs == 0 && nn->nfsd_serv == ((void*)0))
  goto out;

 error = nfsd_create_serv(net);
 if (error)
  goto out;

 nfsd_up_before = nn->nfsd_net_up;

 error = nfsd_startup_net(nrservs, net, cred);
 if (error)
  goto out_destroy;
 error = nn->nfsd_serv->sv_ops->svo_setup(nn->nfsd_serv,
   ((void*)0), nrservs);
 if (error)
  goto out_shutdown;




 error = nn->nfsd_serv->sv_nrthreads - 1;
out_shutdown:
 if (error < 0 && !nfsd_up_before)
  nfsd_shutdown_net(net);
out_destroy:
 nfsd_destroy(net);
out:
 mutex_unlock(&nfsd_mutex);
 return error;
}
