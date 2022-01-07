
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int track_reclaim_completes; int reclaim_str_hashtbl; } ;
struct net {int dummy; } ;


 int kfree (int ) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;

__attribute__((used)) static void
nfs4_cld_state_shutdown(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 nn->track_reclaim_completes = 0;
 kfree(nn->reclaim_str_hashtbl);
}
