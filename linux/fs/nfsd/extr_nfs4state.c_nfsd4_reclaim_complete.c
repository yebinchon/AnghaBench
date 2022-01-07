
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfsd4_reclaim_complete {scalar_t__ rca_one_fs; } ;
union nfsd4_op_u {struct nfsd4_reclaim_complete reclaim_complete; } ;
struct svc_rqst {int dummy; } ;
struct TYPE_7__ {int fh_dentry; } ;
struct nfsd4_compound_state {TYPE_1__* session; TYPE_2__ current_fh; } ;
typedef int __be32 ;
struct TYPE_8__ {int cl_flags; } ;
struct TYPE_6__ {TYPE_3__* se_client; } ;


 int NFSD4_CLIENT_RECLAIM_COMPLETE ;
 int inc_reclaim_complete (TYPE_3__*) ;
 scalar_t__ is_client_expired (TYPE_3__*) ;
 int nfs_ok ;
 int nfsd4_client_record_create (TYPE_3__*) ;
 int nfserr_complete_already ;
 int nfserr_nofilehandle ;
 int nfserr_stale_clientid ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__be32
nfsd4_reclaim_complete(struct svc_rqst *rqstp,
  struct nfsd4_compound_state *cstate, union nfsd4_op_u *u)
{
 struct nfsd4_reclaim_complete *rc = &u->reclaim_complete;
 __be32 status = 0;

 if (rc->rca_one_fs) {
  if (!cstate->current_fh.fh_dentry)
   return nfserr_nofilehandle;




  return nfs_ok;
 }

 status = nfserr_complete_already;
 if (test_and_set_bit(NFSD4_CLIENT_RECLAIM_COMPLETE,
        &cstate->session->se_client->cl_flags))
  goto out;

 status = nfserr_stale_clientid;
 if (is_client_expired(cstate->session->se_client))







  goto out;

 status = nfs_ok;
 nfsd4_client_record_create(cstate->session->se_client);
 inc_reclaim_complete(cstate->session->se_client);
out:
 return status;
}
