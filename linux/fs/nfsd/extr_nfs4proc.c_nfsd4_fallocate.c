
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_file {int nf_file; } ;
struct nfsd4_fallocate {int falloc_length; int falloc_offset; int falloc_stateid; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef scalar_t__ __be32 ;


 int WR_STATE ;
 int dprintk (char*) ;
 scalar_t__ nfs4_preprocess_stateid_op (struct svc_rqst*,struct nfsd4_compound_state*,int *,int *,int ,struct nfsd_file**) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_vfs_fallocate (struct svc_rqst*,int *,int ,int ,int ,int) ;
 int nfsd_file_put (struct nfsd_file*) ;

__attribute__((used)) static __be32
nfsd4_fallocate(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
  struct nfsd4_fallocate *fallocate, int flags)
{
 __be32 status;
 struct nfsd_file *nf;

 status = nfs4_preprocess_stateid_op(rqstp, cstate, &cstate->current_fh,
         &fallocate->falloc_stateid,
         WR_STATE, &nf);
 if (status != nfs_ok) {
  dprintk("NFSD: nfsd4_fallocate: couldn't process stateid!\n");
  return status;
 }

 status = nfsd4_vfs_fallocate(rqstp, &cstate->current_fh, nf->nf_file,
         fallocate->falloc_offset,
         fallocate->falloc_length,
         flags);
 nfsd_file_put(nf);
 return status;
}
