
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_server {int* attr_bitmask; int nfs_client; } ;
struct nfs_open_context {struct nfs4_state* state; struct nfs4_threshold* mdsthreshold; struct cred* cred; struct dentry* dentry; } ;
struct nfs4_threshold {int dummy; } ;
struct nfs4_state_owner {int dummy; } ;
struct nfs4_state {int inode; } ;
struct TYPE_6__ {struct nfs4_threshold* mdsthreshold; } ;
struct TYPE_5__ {int f_attr; } ;
struct TYPE_4__ {int open_flags; scalar_t__ createmode; int * open_bitmap; } ;
struct nfs4_opendata {TYPE_3__ f_attr; scalar_t__ file_created; TYPE_2__ o_res; TYPE_1__ o_arg; int state; } ;
struct nfs4_open_createattrs {struct nfs4_label* label; struct iattr* sattr; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {unsigned int ia_valid; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;
typedef int fmode_t ;
typedef enum open_claim_type4 { ____Placeholder_open_claim_type4 } open_claim_type4 ;


 int ENOMEM ;
 int FATTR4_WORD2_MDSTHRESHOLD ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfs4_label*) ;
 scalar_t__ NFS4_CREATE_GUARDED ;
 int NFS4_OPEN_CLAIM_FH ;
 int NFS4_OPEN_CLAIM_NULL ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int O_CREAT ;
 int O_EXCL ;
 int PTR_ERR (struct nfs4_label*) ;
 int _nfs4_ctx_to_openmode (struct nfs_open_context*) ;
 int _nfs4_open_and_get_state (struct nfs4_opendata*,int,struct nfs_open_context*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int dprintk (char*) ;
 int nfs4_client_recover_expired_lease (int ) ;
 int nfs4_do_setattr (int ,struct cred const*,int ,struct iattr*,struct nfs_open_context*,struct nfs4_label*,struct nfs4_label*) ;
 unsigned int nfs4_exclusive_attrset (struct nfs4_opendata*,struct iattr*,struct nfs4_label**) ;
 int nfs4_get_open_state (int ,struct nfs4_state_owner*) ;
 struct nfs4_state_owner* nfs4_get_state_owner (struct nfs_server*,struct cred const*,int ) ;
 struct nfs4_label* nfs4_label_alloc (struct nfs_server*,int ) ;
 int nfs4_label_free (struct nfs4_label*) ;
 struct nfs4_opendata* nfs4_opendata_alloc (struct dentry*,struct nfs4_state_owner*,int ,int,struct nfs4_open_createattrs const*,int,int ) ;
 int nfs4_opendata_put (struct nfs4_opendata*) ;
 int * nfs4_pnfs_open_bitmap ;
 int nfs4_put_state_owner (struct nfs4_state_owner*) ;
 int nfs4_return_incompatible_delegation (int ,int ) ;
 int nfs_fattr_init (int ) ;
 int nfs_setattr_update_inode (int ,struct iattr*,int ) ;
 int nfs_setsecurity (int ,int ,struct nfs4_label*) ;
 struct nfs4_threshold* pnfs_mdsthreshold_alloc () ;
 scalar_t__ pnfs_use_threshold (struct nfs4_threshold**,struct nfs4_threshold*,struct nfs_server*) ;

__attribute__((used)) static int _nfs4_do_open(struct inode *dir,
   struct nfs_open_context *ctx,
   int flags,
   const struct nfs4_open_createattrs *c,
   int *opened)
{
 struct nfs4_state_owner *sp;
 struct nfs4_state *state = ((void*)0);
 struct nfs_server *server = NFS_SERVER(dir);
 struct nfs4_opendata *opendata;
 struct dentry *dentry = ctx->dentry;
 const struct cred *cred = ctx->cred;
 struct nfs4_threshold **ctx_th = &ctx->mdsthreshold;
 fmode_t fmode = _nfs4_ctx_to_openmode(ctx);
 enum open_claim_type4 claim = NFS4_OPEN_CLAIM_NULL;
 struct iattr *sattr = c->sattr;
 struct nfs4_label *label = c->label;
 struct nfs4_label *olabel = ((void*)0);
 int status;


 status = -ENOMEM;
 sp = nfs4_get_state_owner(server, cred, GFP_KERNEL);
 if (sp == ((void*)0)) {
  dprintk("nfs4_do_open: nfs4_get_state_owner failed!\n");
  goto out_err;
 }
 status = nfs4_client_recover_expired_lease(server->nfs_client);
 if (status != 0)
  goto err_put_state_owner;
 if (d_really_is_positive(dentry))
  nfs4_return_incompatible_delegation(d_inode(dentry), fmode);
 status = -ENOMEM;
 if (d_really_is_positive(dentry))
  claim = NFS4_OPEN_CLAIM_FH;
 opendata = nfs4_opendata_alloc(dentry, sp, fmode, flags,
   c, claim, GFP_KERNEL);
 if (opendata == ((void*)0))
  goto err_put_state_owner;

 if (label) {
  olabel = nfs4_label_alloc(server, GFP_KERNEL);
  if (IS_ERR(olabel)) {
   status = PTR_ERR(olabel);
   goto err_opendata_put;
  }
 }

 if (server->attr_bitmask[2] & FATTR4_WORD2_MDSTHRESHOLD) {
  if (!opendata->f_attr.mdsthreshold) {
   opendata->f_attr.mdsthreshold = pnfs_mdsthreshold_alloc();
   if (!opendata->f_attr.mdsthreshold)
    goto err_free_label;
  }
  opendata->o_arg.open_bitmap = &nfs4_pnfs_open_bitmap[0];
 }
 if (d_really_is_positive(dentry))
  opendata->state = nfs4_get_open_state(d_inode(dentry), sp);

 status = _nfs4_open_and_get_state(opendata, flags, ctx);
 if (status != 0)
  goto err_free_label;
 state = ctx->state;

 if ((opendata->o_arg.open_flags & (O_CREAT|O_EXCL)) == (O_CREAT|O_EXCL) &&
     (opendata->o_arg.createmode != NFS4_CREATE_GUARDED)) {
  unsigned attrs = nfs4_exclusive_attrset(opendata, sattr, &label);




  if (attrs || label) {
   unsigned ia_old = sattr->ia_valid;

   sattr->ia_valid = attrs;
   nfs_fattr_init(opendata->o_res.f_attr);
   status = nfs4_do_setattr(state->inode, cred,
     opendata->o_res.f_attr, sattr,
     ctx, label, olabel);
   if (status == 0) {
    nfs_setattr_update_inode(state->inode, sattr,
      opendata->o_res.f_attr);
    nfs_setsecurity(state->inode, opendata->o_res.f_attr, olabel);
   }
   sattr->ia_valid = ia_old;
  }
 }
 if (opened && opendata->file_created)
  *opened = 1;

 if (pnfs_use_threshold(ctx_th, opendata->f_attr.mdsthreshold, server)) {
  *ctx_th = opendata->f_attr.mdsthreshold;
  opendata->f_attr.mdsthreshold = ((void*)0);
 }

 nfs4_label_free(olabel);

 nfs4_opendata_put(opendata);
 nfs4_put_state_owner(sp);
 return 0;
err_free_label:
 nfs4_label_free(olabel);
err_opendata_put:
 nfs4_opendata_put(opendata);
err_put_state_owner:
 nfs4_put_state_owner(sp);
out_err:
 return status;
}
