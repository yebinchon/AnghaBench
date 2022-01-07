
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_commit {int co_count; int co_offset; int co_verf; } ;
union nfsd4_op_u {struct nfsd4_commit commit; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int __be32 ;


 int SVC_NET (struct svc_rqst*) ;
 int gen_boot_verifier (int *,int ) ;
 int nfsd_commit (struct svc_rqst*,int *,int ,int ) ;

__attribute__((used)) static __be32
nfsd4_commit(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      union nfsd4_op_u *u)
{
 struct nfsd4_commit *commit = &u->commit;

 gen_boot_verifier(&commit->co_verf, SVC_NET(rqstp));
 return nfsd_commit(rqstp, &cstate->current_fh, commit->co_offset,
        commit->co_count);
}
