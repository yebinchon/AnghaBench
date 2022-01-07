
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_seqid {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct TYPE_4__ {int stateid; struct nfs_seqid* seqid; int * fl; int fh; } ;
struct TYPE_3__ {struct nfs_seqid* seqid; } ;
struct nfs4_unlockdata {TYPE_2__ arg; int server; int fl; int l_ctx; int ctx; struct nfs4_lock_state* lsp; TYPE_1__ res; } ;
struct nfs4_state {int state_lock; struct inode* inode; } ;
struct nfs4_lock_state {int ls_stateid; struct nfs4_state* ls_state; } ;
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;


 int GFP_NOFS ;
 int NFS_FH (struct inode*) ;
 int NFS_SERVER (struct inode*) ;
 int get_nfs_open_context (struct nfs_open_context*) ;
 struct nfs4_unlockdata* kzalloc (int,int ) ;
 int locks_copy_lock (int *,struct file_lock*) ;
 int locks_init_lock (int *) ;
 int nfs4_stateid_copy (int *,int *) ;
 int nfs_get_lock_context (struct nfs_open_context*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_unlockdata *nfs4_alloc_unlockdata(struct file_lock *fl,
  struct nfs_open_context *ctx,
  struct nfs4_lock_state *lsp,
  struct nfs_seqid *seqid)
{
 struct nfs4_unlockdata *p;
 struct nfs4_state *state = lsp->ls_state;
 struct inode *inode = state->inode;

 p = kzalloc(sizeof(*p), GFP_NOFS);
 if (p == ((void*)0))
  return ((void*)0);
 p->arg.fh = NFS_FH(inode);
 p->arg.fl = &p->fl;
 p->arg.seqid = seqid;
 p->res.seqid = seqid;
 p->lsp = lsp;

 p->ctx = get_nfs_open_context(ctx);
 p->l_ctx = nfs_get_lock_context(ctx);
 locks_init_lock(&p->fl);
 locks_copy_lock(&p->fl, fl);
 p->server = NFS_SERVER(inode);
 spin_lock(&state->state_lock);
 nfs4_stateid_copy(&p->arg.stateid, &lsp->ls_stateid);
 spin_unlock(&state->state_lock);
 return p;
}
