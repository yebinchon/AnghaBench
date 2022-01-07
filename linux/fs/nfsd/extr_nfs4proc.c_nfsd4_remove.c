
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_remove {int rm_cinfo; int rm_namelen; int rm_name; } ;
union nfsd4_op_u {struct nfsd4_remove remove; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int __be32 ;


 int SVC_NET (struct svc_rqst*) ;
 int fh_unlock (int *) ;
 int nfsd_unlink (struct svc_rqst*,int *,int ,int ,int ) ;
 int nfserr_grace ;
 scalar_t__ opens_in_grace (int ) ;
 int set_change_info (int *,int *) ;

__attribute__((used)) static __be32
nfsd4_remove(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      union nfsd4_op_u *u)
{
 struct nfsd4_remove *remove = &u->remove;
 __be32 status;

 if (opens_in_grace(SVC_NET(rqstp)))
  return nfserr_grace;
 status = nfsd_unlink(rqstp, &cstate->current_fh, 0,
        remove->rm_name, remove->rm_namelen);
 if (!status) {
  fh_unlock(&cstate->current_fh);
  set_change_info(&remove->rm_cinfo, &cstate->current_fh);
 }
 return status;
}
