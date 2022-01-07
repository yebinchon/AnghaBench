
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nfs_open_context* open_context; } ;
struct nfs_open_context {int * mdsthreshold; int list; TYPE_1__ lock_context; scalar_t__ flock_owner; scalar_t__ error; scalar_t__ flags; int mode; int * state; int * ll_cred; struct cred const* cred; int dentry; } ;
struct file {int dummy; } ;
struct dentry {int d_sb; } ;
struct cred {int dummy; } ;
typedef int fmode_t ;
typedef scalar_t__ fl_owner_t ;


 int ENOMEM ;
 struct nfs_open_context* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dget (struct dentry*) ;
 struct cred* get_current_cred () ;
 struct nfs_open_context* kmalloc (int,int ) ;
 int nfs_init_lock_context (TYPE_1__*) ;
 int nfs_sb_active (int ) ;
 int put_cred (struct cred const*) ;

struct nfs_open_context *alloc_nfs_open_context(struct dentry *dentry,
      fmode_t f_mode,
      struct file *filp)
{
 struct nfs_open_context *ctx;
 const struct cred *cred = get_current_cred();

 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  put_cred(cred);
  return ERR_PTR(-ENOMEM);
 }
 nfs_sb_active(dentry->d_sb);
 ctx->dentry = dget(dentry);
 ctx->cred = cred;
 ctx->ll_cred = ((void*)0);
 ctx->state = ((void*)0);
 ctx->mode = f_mode;
 ctx->flags = 0;
 ctx->error = 0;
 ctx->flock_owner = (fl_owner_t)filp;
 nfs_init_lock_context(&ctx->lock_context);
 ctx->lock_context.open_context = ctx;
 INIT_LIST_HEAD(&ctx->list);
 ctx->mdsthreshold = ((void*)0);
 return ctx;
}
