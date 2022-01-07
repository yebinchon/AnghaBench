
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_clone {int cl_count; int cl_dst_pos; int cl_src_pos; int cl_dst_stateid; int cl_src_stateid; } ;
union nfsd4_op_u {struct nfsd4_clone clone; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_file {int nf_file; } ;
struct nfsd4_compound_state {int dummy; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ nfsd4_clone_file_range (int ,int ,int ,int ,int ) ;
 scalar_t__ nfsd4_verify_copy (struct svc_rqst*,struct nfsd4_compound_state*,int *,struct nfsd_file**,int *,struct nfsd_file**) ;
 int nfsd_file_put (struct nfsd_file*) ;

__attribute__((used)) static __be32
nfsd4_clone(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 struct nfsd4_clone *clone = &u->clone;
 struct nfsd_file *src, *dst;
 __be32 status;

 status = nfsd4_verify_copy(rqstp, cstate, &clone->cl_src_stateid, &src,
       &clone->cl_dst_stateid, &dst);
 if (status)
  goto out;

 status = nfsd4_clone_file_range(src->nf_file, clone->cl_src_pos,
   dst->nf_file, clone->cl_dst_pos, clone->cl_count);

 nfsd_file_put(dst);
 nfsd_file_put(src);
out:
 return status;
}
