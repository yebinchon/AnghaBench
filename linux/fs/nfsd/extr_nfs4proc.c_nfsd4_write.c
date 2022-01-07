
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_write {scalar_t__ wr_offset; unsigned long wr_buflen; unsigned long wr_bytes_written; int wr_how_written; int wr_head; int wr_pagelist; int wr_verifier; int wr_stable_how; int wr_stateid; } ;
union nfsd4_op_u {struct nfsd4_write write; } ;
struct svc_rqst {int rq_vec; } ;
struct nfsd_file {int nf_file; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int stateid_t ;
typedef scalar_t__ __be32 ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ OFFSET_MAX ;
 int SVC_NET (struct svc_rqst*) ;
 int WARN_ON_ONCE (int) ;
 int WR_STATE ;
 int dprintk (char*) ;
 int gen_boot_verifier (int *,int ) ;
 scalar_t__ nfs4_preprocess_stateid_op (struct svc_rqst*,struct nfsd4_compound_state*,int *,int *,int ,struct nfsd_file**) ;
 scalar_t__ nfs_ok ;
 int nfsd_file_put (struct nfsd_file*) ;
 scalar_t__ nfsd_vfs_write (struct svc_rqst*,int *,int ,scalar_t__,int ,int,unsigned long*,int ) ;
 scalar_t__ nfserr_inval ;
 int svc_fill_write_vector (struct svc_rqst*,int ,int *,unsigned long) ;
 int trace_nfsd_write_done (struct svc_rqst*,int *,scalar_t__,unsigned long) ;
 int trace_nfsd_write_start (struct svc_rqst*,int *,scalar_t__,unsigned long) ;

__attribute__((used)) static __be32
nfsd4_write(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
     union nfsd4_op_u *u)
{
 struct nfsd4_write *write = &u->write;
 stateid_t *stateid = &write->wr_stateid;
 struct nfsd_file *nf = ((void*)0);
 __be32 status = nfs_ok;
 unsigned long cnt;
 int nvecs;

 if (write->wr_offset >= OFFSET_MAX)
  return nfserr_inval;

 cnt = write->wr_buflen;
 trace_nfsd_write_start(rqstp, &cstate->current_fh,
          write->wr_offset, cnt);
 status = nfs4_preprocess_stateid_op(rqstp, cstate, &cstate->current_fh,
      stateid, WR_STATE, &nf);
 if (status) {
  dprintk("NFSD: nfsd4_write: couldn't process stateid!\n");
  return status;
 }

 write->wr_how_written = write->wr_stable_how;
 gen_boot_verifier(&write->wr_verifier, SVC_NET(rqstp));

 nvecs = svc_fill_write_vector(rqstp, write->wr_pagelist,
          &write->wr_head, write->wr_buflen);
 WARN_ON_ONCE(nvecs > ARRAY_SIZE(rqstp->rq_vec));

 status = nfsd_vfs_write(rqstp, &cstate->current_fh, nf->nf_file,
    write->wr_offset, rqstp->rq_vec, nvecs, &cnt,
    write->wr_how_written);
 nfsd_file_put(nf);

 write->wr_bytes_written = cnt;
 trace_nfsd_write_done(rqstp, &cstate->current_fh,
         write->wr_offset, cnt);
 return status;
}
