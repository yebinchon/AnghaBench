
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {int dummy; } ;
struct nfsd4_compound_state {TYPE_1__* clp; } ;
typedef int clientid_t ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int cl_flags; } ;


 int NFSD4_CLIENT_RECLAIM_COMPLETE ;
 scalar_t__ lookup_clientid (int *,struct nfsd4_compound_state*,struct nfsd_net*) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_client_record_check (TYPE_1__*) ;
 scalar_t__ nfserr_no_grace ;
 scalar_t__ nfserr_reclaim_bad ;
 scalar_t__ test_bit (int ,int *) ;

__be32
nfs4_check_open_reclaim(clientid_t *clid,
  struct nfsd4_compound_state *cstate,
  struct nfsd_net *nn)
{
 __be32 status;


 status = lookup_clientid(clid, cstate, nn);
 if (status)
  return nfserr_reclaim_bad;

 if (test_bit(NFSD4_CLIENT_RECLAIM_COMPLETE, &cstate->clp->cl_flags))
  return nfserr_no_grace;

 if (nfsd4_client_record_check(cstate->clp))
  return nfserr_reclaim_bad;

 return nfs_ok;
}
