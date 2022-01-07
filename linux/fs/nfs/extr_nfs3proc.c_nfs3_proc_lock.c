
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_open_context {int flags; } ;
struct nfs_lock_context {int dummy; } ;
struct inode {int dummy; } ;
struct file_lock {int fl_flags; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int nlm_host; } ;


 int FL_CLOSE ;
 scalar_t__ IS_ERR (struct nfs_lock_context*) ;
 int NFS_CONTEXT_UNLOCK ;
 TYPE_1__* NFS_SERVER (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 struct nfs_lock_context* nfs_get_lock_context (struct nfs_open_context*) ;
 int nfs_put_lock_context (struct nfs_lock_context*) ;
 int nlmclnt_proc (int ,int,struct file_lock*,struct nfs_lock_context*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
nfs3_proc_lock(struct file *filp, int cmd, struct file_lock *fl)
{
 struct inode *inode = file_inode(filp);
 struct nfs_lock_context *l_ctx = ((void*)0);
 struct nfs_open_context *ctx = nfs_file_open_context(filp);
 int status;

 if (fl->fl_flags & FL_CLOSE) {
  l_ctx = nfs_get_lock_context(ctx);
  if (IS_ERR(l_ctx))
   l_ctx = ((void*)0);
  else
   set_bit(NFS_CONTEXT_UNLOCK, &ctx->flags);
 }

 status = nlmclnt_proc(NFS_SERVER(inode)->nlm_host, cmd, fl, l_ctx);

 if (l_ctx)
  nfs_put_lock_context(l_ctx);

 return status;
}
