
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int nfsd_net_up; scalar_t__ lockd_up; } ;
struct net {int dummy; } ;


 int lockd_down (struct net*) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfs4_state_shutdown_net (struct net*) ;
 int nfsd_file_cache_purge (struct net*) ;
 int nfsd_net_id ;
 int nfsd_shutdown_generic () ;

__attribute__((used)) static void nfsd_shutdown_net(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 nfsd_file_cache_purge(net);
 nfs4_state_shutdown_net(net);
 if (nn->lockd_up) {
  lockd_down(net);
  nn->lockd_up = 0;
 }
 nn->nfsd_net_up = 0;
 nfsd_shutdown_generic();
}
