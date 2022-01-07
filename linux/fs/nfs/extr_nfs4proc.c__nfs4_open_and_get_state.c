
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int caps; } ;
struct nfs_open_context {struct dentry* dentry; struct nfs4_state* state; } ;
struct nfs4_state_owner {int so_reclaim_seqcount; int so_cred; struct nfs_server* so_server; } ;
struct nfs4_state {scalar_t__ inode; int flags; } ;
struct TYPE_2__ {int rflags; int seq_res; } ;
struct nfs4_opendata {TYPE_1__ o_res; int cancelled; int lgp; struct dentry* dir; struct dentry* dentry; struct nfs4_state_owner* owner; } ;
struct dentry {int dummy; } ;
typedef int fmode_t ;


 scalar_t__ IS_ERR (struct nfs4_state*) ;
 int NFS4_OPEN_RESULT_MAY_NOTIFY_LOCK ;
 int NFS_CAP_POSIX_LOCK ;
 int NFS_STATE_MAY_NOTIFY_LOCK ;
 int NFS_STATE_POSIX_LOCKS ;
 int PTR_ERR (struct nfs4_state*) ;
 int _nfs4_ctx_to_accessmode (struct nfs_open_context*) ;
 struct nfs4_state* _nfs4_opendata_to_nfs4_state (struct nfs4_opendata*) ;
 int _nfs4_proc_open (struct nfs4_opendata*,struct nfs_open_context*) ;
 int d_drop (struct dentry*) ;
 struct dentry* d_exact_alias (struct dentry*,scalar_t__) ;
 scalar_t__ d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 struct dentry* d_splice_alias (int ,struct dentry*) ;
 int dput (struct dentry*) ;
 int igrab (scalar_t__) ;
 int nfs4_opendata_access (int ,struct nfs4_opendata*,struct nfs4_state*,int ,int) ;
 int nfs4_schedule_stateid_recovery (struct nfs_server*,struct nfs4_state*) ;
 int nfs4_sequence_free_slot (int *) ;
 int nfs_inode_attach_open_context (struct nfs_open_context*) ;
 int nfs_save_change_attribute (scalar_t__) ;
 int nfs_set_verifier (struct dentry*,int ) ;
 int pnfs_parse_lgopen (scalar_t__,int ,struct nfs_open_context*) ;
 unsigned int raw_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int _nfs4_open_and_get_state(struct nfs4_opendata *opendata,
  int flags, struct nfs_open_context *ctx)
{
 struct nfs4_state_owner *sp = opendata->owner;
 struct nfs_server *server = sp->so_server;
 struct dentry *dentry;
 struct nfs4_state *state;
 fmode_t acc_mode = _nfs4_ctx_to_accessmode(ctx);
 unsigned int seq;
 int ret;

 seq = raw_seqcount_begin(&sp->so_reclaim_seqcount);

 ret = _nfs4_proc_open(opendata, ctx);
 if (ret != 0)
  goto out;

 state = _nfs4_opendata_to_nfs4_state(opendata);
 ret = PTR_ERR(state);
 if (IS_ERR(state))
  goto out;
 ctx->state = state;
 if (server->caps & NFS_CAP_POSIX_LOCK)
  set_bit(NFS_STATE_POSIX_LOCKS, &state->flags);
 if (opendata->o_res.rflags & NFS4_OPEN_RESULT_MAY_NOTIFY_LOCK)
  set_bit(NFS_STATE_MAY_NOTIFY_LOCK, &state->flags);

 dentry = opendata->dentry;
 if (d_really_is_negative(dentry)) {
  struct dentry *alias;
  d_drop(dentry);
  alias = d_exact_alias(dentry, state->inode);
  if (!alias)
   alias = d_splice_alias(igrab(state->inode), dentry);

  if (alias) {
   dput(ctx->dentry);
   ctx->dentry = dentry = alias;
  }
  nfs_set_verifier(dentry,
    nfs_save_change_attribute(d_inode(opendata->dir)));
 }


 pnfs_parse_lgopen(state->inode, opendata->lgp, ctx);

 ret = nfs4_opendata_access(sp->so_cred, opendata, state,
   acc_mode, flags);
 if (ret != 0)
  goto out;

 if (d_inode(dentry) == state->inode) {
  nfs_inode_attach_open_context(ctx);
  if (read_seqcount_retry(&sp->so_reclaim_seqcount, seq))
   nfs4_schedule_stateid_recovery(server, state);
 }

out:
 if (!opendata->cancelled)
  nfs4_sequence_free_slot(&opendata->o_res.seq_res);
 return ret;
}
