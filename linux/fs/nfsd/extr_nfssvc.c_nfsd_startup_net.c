
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int nfsd_net_up; int lockd_up; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;


 int lockd_down (struct net*) ;
 int lockd_up (struct net*,struct cred const*) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfs4_state_start_net (struct net*) ;
 int nfsd_init_socks (struct net*,struct cred const*) ;
 scalar_t__ nfsd_needs_lockd (struct nfsd_net*) ;
 int nfsd_net_id ;
 int nfsd_shutdown_generic () ;
 int nfsd_startup_generic (int) ;

__attribute__((used)) static int nfsd_startup_net(int nrservs, struct net *net, const struct cred *cred)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 int ret;

 if (nn->nfsd_net_up)
  return 0;

 ret = nfsd_startup_generic(nrservs);
 if (ret)
  return ret;
 ret = nfsd_init_socks(net, cred);
 if (ret)
  goto out_socks;

 if (nfsd_needs_lockd(nn) && !nn->lockd_up) {
  ret = lockd_up(net, cred);
  if (ret)
   goto out_socks;
  nn->lockd_up = 1;
 }

 ret = nfs4_state_start_net(net);
 if (ret)
  goto out_lockd;

 nn->nfsd_net_up = 1;
 return 0;

out_lockd:
 if (nn->lockd_up) {
  lockd_down(net);
  nn->lockd_up = 0;
 }
out_socks:
 nfsd_shutdown_generic();
 return ret;
}
