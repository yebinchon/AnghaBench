
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int dummy; } ;
struct nfsd_net {int dummy; } ;
struct nfs4_client_reclaim {scalar_t__ cr_clp; } ;


 struct nfs4_client_reclaim* nfsd4_find_reclaim_client (struct xdr_netobj,struct nfsd_net*) ;

bool
nfs4_has_reclaimed_state(struct xdr_netobj name, struct nfsd_net *nn)
{
 struct nfs4_client_reclaim *crp;

 crp = nfsd4_find_reclaim_client(name, nn);
 return (crp && crp->cr_clp);
}
