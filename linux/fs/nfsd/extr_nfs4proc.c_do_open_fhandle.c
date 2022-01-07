
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct TYPE_2__ {int ia_valid; scalar_t__ ia_size; } ;
struct nfsd4_open {int op_truncate; scalar_t__ op_claim_type; TYPE_1__ op_iattr; int op_cinfo; } ;
struct nfsd4_compound_state {struct svc_fh current_fh; } ;
struct nfsd4_change_info {int dummy; } ;
typedef int __be32 ;


 int ATTR_SIZE ;
 scalar_t__ NFS4_OPEN_CLAIM_DELEG_CUR_FH ;
 int NFSD_MAY_OWNER_OVERRIDE ;
 int do_open_permission (struct svc_rqst*,struct svc_fh*,struct nfsd4_open*,int) ;
 int memset (int *,int ,int) ;
 int nfsd4_set_open_owner_reply_cache (struct nfsd4_compound_state*,struct nfsd4_open*,struct svc_fh*) ;

__attribute__((used)) static __be32
do_open_fhandle(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate, struct nfsd4_open *open)
{
 struct svc_fh *current_fh = &cstate->current_fh;
 __be32 status;
 int accmode = 0;





 memset(&open->op_cinfo, 0, sizeof(struct nfsd4_change_info));

 nfsd4_set_open_owner_reply_cache(cstate, open, current_fh);

 open->op_truncate = (open->op_iattr.ia_valid & ATTR_SIZE) &&
  (open->op_iattr.ia_size == 0);
 if (open->op_claim_type == NFS4_OPEN_CLAIM_DELEG_CUR_FH)
  accmode = NFSD_MAY_OWNER_OVERRIDE;

 status = do_open_permission(rqstp, current_fh, open, accmode);

 return status;
}
