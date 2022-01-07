
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct TYPE_8__ {int len; int data; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct nfsd4_open {int* op_bmval; scalar_t__ op_claim_type; int op_cinfo; int op_created; int * op_acl; TYPE_3__ op_fname; int op_createmode; TYPE_4__ op_label; int op_truncate; TYPE_1__ op_verf; int op_iattr; scalar_t__ op_umask; scalar_t__ op_create; } ;
struct nfsd4_compound_state {struct svc_fh current_fh; } ;
typedef scalar_t__ __be32 ;
struct TYPE_10__ {TYPE_2__* fs; } ;
struct TYPE_7__ {scalar_t__ umask; } ;


 int FATTR4_WORD1_TIME_ACCESS ;
 int FATTR4_WORD1_TIME_MODIFY ;
 int GFP_KERNEL ;
 int NFS4_FHSIZE ;
 scalar_t__ NFS4_OPEN_CLAIM_DELEGATE_CUR ;
 int NFSD_MAY_NOP ;
 int NFSD_MAY_OWNER_OVERRIDE ;
 TYPE_5__* current ;
 scalar_t__ do_nfsd_create (struct svc_rqst*,struct svc_fh*,int ,int ,int *,struct svc_fh*,int ,int *,int *,int *) ;
 scalar_t__ do_open_permission (struct svc_rqst*,struct svc_fh*,struct nfsd4_open*,int) ;
 int do_set_nfs4_acl (struct svc_rqst*,struct svc_fh*,int *,int*) ;
 int fh_init (struct svc_fh*,int ) ;
 scalar_t__ is_create_with_attrs (struct nfsd4_open*) ;
 struct svc_fh* kmalloc (int,int ) ;
 int nfsd4_security_inode_setsecctx (struct svc_fh*,TYPE_4__*,int*) ;
 int nfsd4_set_open_owner_reply_cache (struct nfsd4_compound_state*,struct nfsd4_open*,struct svc_fh*) ;
 scalar_t__ nfsd_check_obj_isreg (struct svc_fh*) ;
 scalar_t__ nfsd_create_is_exclusive (int ) ;
 scalar_t__ nfsd_lookup (struct svc_rqst*,struct svc_fh*,int ,int ,struct svc_fh*) ;
 scalar_t__ nfserr_jukebox ;
 int set_change_info (int *,struct svc_fh*) ;

__attribute__((used)) static __be32
do_open_lookup(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate, struct nfsd4_open *open, struct svc_fh **resfh)
{
 struct svc_fh *current_fh = &cstate->current_fh;
 int accmode;
 __be32 status;

 *resfh = kmalloc(sizeof(struct svc_fh), GFP_KERNEL);
 if (!*resfh)
  return nfserr_jukebox;
 fh_init(*resfh, NFS4_FHSIZE);
 open->op_truncate = 0;

 if (open->op_create) {
  current->fs->umask = open->op_umask;
  status = do_nfsd_create(rqstp, current_fh, open->op_fname.data,
     open->op_fname.len, &open->op_iattr,
     *resfh, open->op_createmode,
     (u32 *)open->op_verf.data,
     &open->op_truncate, &open->op_created);
  current->fs->umask = 0;

  if (!status && open->op_label.len)
   nfsd4_security_inode_setsecctx(*resfh, &open->op_label, open->op_bmval);






  if (nfsd_create_is_exclusive(open->op_createmode) && status == 0)
   open->op_bmval[1] |= (FATTR4_WORD1_TIME_ACCESS |
      FATTR4_WORD1_TIME_MODIFY);
 } else






  status = nfsd_lookup(rqstp, current_fh,
         open->op_fname.data, open->op_fname.len, *resfh);
 if (status)
  goto out;
 status = nfsd_check_obj_isreg(*resfh);
 if (status)
  goto out;

 if (is_create_with_attrs(open) && open->op_acl != ((void*)0))
  do_set_nfs4_acl(rqstp, *resfh, open->op_acl, open->op_bmval);

 nfsd4_set_open_owner_reply_cache(cstate, open, *resfh);
 accmode = NFSD_MAY_NOP;
 if (open->op_created ||
   open->op_claim_type == NFS4_OPEN_CLAIM_DELEGATE_CUR)
  accmode |= NFSD_MAY_OWNER_OVERRIDE;
 status = do_open_permission(rqstp, *resfh, open, accmode);
 set_change_info(&open->op_cinfo, current_fh);
out:
 return status;
}
