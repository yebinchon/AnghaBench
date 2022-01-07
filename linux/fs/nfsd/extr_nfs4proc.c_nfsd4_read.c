
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_read {scalar_t__ rd_offset; int * rd_fhp; struct svc_rqst* rd_rqstp; int * rd_nf; int rd_stateid; int rd_length; } ;
union nfsd4_op_u {struct nfsd4_read read; } ;
struct svc_rqst {int rq_flags; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ OFFSET_MAX ;
 int RD_STATE ;
 int RQ_SPLICE_OK ;
 int clear_bit (int ,int *) ;
 int dprintk (char*) ;
 scalar_t__ nfs4_preprocess_stateid_op (struct svc_rqst*,struct nfsd4_compound_state*,int *,int *,int ,int **) ;
 scalar_t__ nfs_ok ;
 int nfsd4_last_compound_op (struct svc_rqst*) ;
 scalar_t__ nfserr_inval ;
 int trace_nfsd_read_start (struct svc_rqst*,int *,scalar_t__,int ) ;

__attribute__((used)) static __be32
nfsd4_read(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
    union nfsd4_op_u *u)
{
 struct nfsd4_read *read = &u->read;
 __be32 status;

 read->rd_nf = ((void*)0);
 if (read->rd_offset >= OFFSET_MAX)
  return nfserr_inval;

 trace_nfsd_read_start(rqstp, &cstate->current_fh,
         read->rd_offset, read->rd_length);
 if (!nfsd4_last_compound_op(rqstp))
  clear_bit(RQ_SPLICE_OK, &rqstp->rq_flags);


 status = nfs4_preprocess_stateid_op(rqstp, cstate, &cstate->current_fh,
     &read->rd_stateid, RD_STATE,
     &read->rd_nf);
 if (status) {
  dprintk("NFSD: nfsd4_read: couldn't process stateid!\n");
  goto out;
 }
 status = nfs_ok;
out:
 read->rd_rqstp = rqstp;
 read->rd_fhp = &cstate->current_fh;
 return status;
}
