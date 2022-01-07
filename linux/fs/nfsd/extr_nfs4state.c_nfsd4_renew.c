
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cl_id; int cl_boot; } ;
union nfsd4_op_u {TYPE_1__ renew; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int dummy; } ;
struct nfsd4_compound_state {struct nfs4_client* clp; } ;
struct nfs4_client {scalar_t__ cl_cb_state; int cl_delegations; } ;
typedef TYPE_1__ clientid_t ;
typedef scalar_t__ __be32 ;


 scalar_t__ NFSD4_CB_UP ;
 int SVC_NET (struct svc_rqst*) ;
 int dprintk (char*,int ,int ) ;
 int list_empty (int *) ;
 scalar_t__ lookup_clientid (TYPE_1__*,struct nfsd4_compound_state*,struct nfsd_net*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 scalar_t__ nfs_ok ;
 int nfsd_net_id ;
 scalar_t__ nfserr_cb_path_down ;

__be32
nfsd4_renew(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
     union nfsd4_op_u *u)
{
 clientid_t *clid = &u->renew;
 struct nfs4_client *clp;
 __be32 status;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);

 dprintk("process_renew(%08x/%08x): starting\n",
   clid->cl_boot, clid->cl_id);
 status = lookup_clientid(clid, cstate, nn);
 if (status)
  goto out;
 clp = cstate->clp;
 status = nfserr_cb_path_down;
 if (!list_empty(&clp->cl_delegations)
   && clp->cl_cb_state != NFSD4_CB_UP)
  goto out;
 status = nfs_ok;
out:
 return status;
}
