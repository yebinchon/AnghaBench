
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; scalar_t__ len; } ;
struct nfsd4_open {int op_claim_type; scalar_t__ op_xdr_error; scalar_t__ op_created; TYPE_4__* op_openowner; int op_clientid; scalar_t__ op_create; TYPE_1__ op_fname; } ;
union nfsd4_op_u {struct nfsd4_open open; } ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_handle; } ;
struct nfsd_net {int somebody_reclaimed; } ;
struct nfsd4_compound_state {struct svc_fh current_fh; TYPE_5__* session; } ;
struct nfs4_replay {int rp_openfh; } ;
struct net {int dummy; } ;
typedef scalar_t__ __be32 ;
struct TYPE_10__ {TYPE_2__* se_client; } ;
struct TYPE_8__ {struct nfs4_replay so_replay; } ;
struct TYPE_9__ {int oo_flags; TYPE_3__ oo_owner; } ;
struct TYPE_7__ {int cl_flags; } ;


 int NFS4_OO_CONFIRMED ;







 int NFSD4_CLIENT_RECLAIM_COMPLETE ;
 int NFSD_MAY_NOP ;
 struct net* SVC_NET (struct svc_rqst*) ;
 int WARN (int,char*,int ) ;
 int be32_to_cpu (scalar_t__) ;
 int copy_clientid (int *,TYPE_5__*) ;
 scalar_t__ do_open_fhandle (struct svc_rqst*,struct nfsd4_compound_state*,struct nfsd4_open*) ;
 scalar_t__ do_open_lookup (struct svc_rqst*,struct nfsd4_compound_state*,struct nfsd4_open*,struct svc_fh**) ;
 int dprintk (char*,...) ;
 int fh_copy_shallow (int *,int *) ;
 int fh_dup2 (struct svc_fh*,struct svc_fh*) ;
 int fh_put (struct svc_fh*) ;
 scalar_t__ fh_verify (struct svc_rqst*,struct svc_fh*,int ,int ) ;
 int kfree (struct svc_fh*) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 scalar_t__ nfs4_check_open_reclaim (int *,struct nfsd4_compound_state*,struct nfsd_net*) ;
 int nfsd4_bump_seqid (struct nfsd4_compound_state*,scalar_t__) ;
 scalar_t__ nfsd4_check_open_attributes (struct svc_rqst*,struct nfsd4_compound_state*,struct nfsd4_open*) ;
 int nfsd4_cleanup_open_state (struct nfsd4_compound_state*,struct nfsd4_open*) ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;
 scalar_t__ nfsd4_process_open1 (struct nfsd4_compound_state*,struct nfsd4_open*,struct nfsd_net*) ;
 scalar_t__ nfsd4_process_open2 (struct svc_rqst*,struct svc_fh*,struct nfsd4_open*) ;
 int nfsd_net_id ;
 scalar_t__ nfserr_grace ;
 scalar_t__ nfserr_inval ;
 scalar_t__ nfserr_no_grace ;
 scalar_t__ nfserr_notsupp ;
 scalar_t__ nfserr_replay_me ;
 scalar_t__ opens_in_grace (struct net*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static __be32
nfsd4_open(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
    union nfsd4_op_u *u)
{
 struct nfsd4_open *open = &u->open;
 __be32 status;
 struct svc_fh *resfh = ((void*)0);
 struct net *net = SVC_NET(rqstp);
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 bool reclaim = 0;

 dprintk("NFSD: nfsd4_open filename %.*s op_openowner %p\n",
  (int)open->op_fname.len, open->op_fname.data,
  open->op_openowner);


 if (open->op_create && open->op_claim_type != 129)
  return nfserr_inval;

 open->op_created = 0;




 if (nfsd4_has_session(cstate) &&
     !test_bit(NFSD4_CLIENT_RECLAIM_COMPLETE,
        &cstate->session->se_client->cl_flags) &&
     open->op_claim_type != 128)
  return nfserr_grace;

 if (nfsd4_has_session(cstate))
  copy_clientid(&open->op_clientid, cstate->session);


 status = nfsd4_process_open1(cstate, open, nn);
 if (status == nfserr_replay_me) {
  struct nfs4_replay *rp = &open->op_openowner->oo_owner.so_replay;
  fh_put(&cstate->current_fh);
  fh_copy_shallow(&cstate->current_fh.fh_handle,
    &rp->rp_openfh);
  status = fh_verify(rqstp, &cstate->current_fh, 0, NFSD_MAY_NOP);
  if (status)
   dprintk("nfsd4_open: replay failed"
    " restoring previous filehandle\n");
  else
   status = nfserr_replay_me;
 }
 if (status)
  goto out;
 if (open->op_xdr_error) {
  status = open->op_xdr_error;
  goto out;
 }

 status = nfsd4_check_open_attributes(rqstp, cstate, open);
 if (status)
  goto out;



 status = nfserr_grace;
 if (opens_in_grace(net) && open->op_claim_type != 128)
  goto out;
 status = nfserr_no_grace;
 if (!opens_in_grace(net) && open->op_claim_type == 128)
  goto out;

 switch (open->op_claim_type) {
  case 134:
  case 129:
   status = do_open_lookup(rqstp, cstate, open, &resfh);
   if (status)
    goto out;
   break;
  case 128:
   status = nfs4_check_open_reclaim(&open->op_clientid,
        cstate, nn);
   if (status)
    goto out;
   open->op_openowner->oo_flags |= NFS4_OO_CONFIRMED;
   reclaim = 1;

  case 130:
  case 132:
   status = do_open_fhandle(rqstp, cstate, open);
   if (status)
    goto out;
   resfh = &cstate->current_fh;
   break;
  case 131:
              case 133:
   dprintk("NFSD: unsupported OPEN claim type %d\n",
    open->op_claim_type);
   status = nfserr_notsupp;
   goto out;
  default:
   dprintk("NFSD: Invalid OPEN claim type %d\n",
    open->op_claim_type);
   status = nfserr_inval;
   goto out;
 }





 status = nfsd4_process_open2(rqstp, resfh, open);
 WARN(status && open->op_created,
      "nfsd4_process_open2 failed to open newly-created file! status=%u\n",
      be32_to_cpu(status));
 if (reclaim && !status)
  nn->somebody_reclaimed = 1;
out:
 if (resfh && resfh != &cstate->current_fh) {
  fh_dup2(&cstate->current_fh, resfh);
  fh_put(resfh);
  kfree(resfh);
 }
 nfsd4_cleanup_open_state(cstate, open);
 nfsd4_bump_seqid(cstate, status);
 return status;
}
