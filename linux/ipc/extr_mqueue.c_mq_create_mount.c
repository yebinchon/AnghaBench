
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct mqueue_fs_context {TYPE_1__* ipc_ns; } ;
struct ipc_namespace {int dummy; } ;
struct fs_context {int user_ns; struct mqueue_fs_context* fs_private; } ;
struct TYPE_3__ {int user_ns; } ;


 struct vfsmount* ERR_CAST (struct fs_context*) ;
 scalar_t__ IS_ERR (struct fs_context*) ;
 int SB_KERNMOUNT ;
 struct vfsmount* fc_mount (struct fs_context*) ;
 struct fs_context* fs_context_for_mount (int *,int ) ;
 TYPE_1__* get_ipc_ns (struct ipc_namespace*) ;
 int get_user_ns (int ) ;
 int mqueue_fs_type ;
 int put_fs_context (struct fs_context*) ;
 int put_ipc_ns (TYPE_1__*) ;
 int put_user_ns (int ) ;

__attribute__((used)) static struct vfsmount *mq_create_mount(struct ipc_namespace *ns)
{
 struct mqueue_fs_context *ctx;
 struct fs_context *fc;
 struct vfsmount *mnt;

 fc = fs_context_for_mount(&mqueue_fs_type, SB_KERNMOUNT);
 if (IS_ERR(fc))
  return ERR_CAST(fc);

 ctx = fc->fs_private;
 put_ipc_ns(ctx->ipc_ns);
 ctx->ipc_ns = get_ipc_ns(ns);
 put_user_ns(fc->user_ns);
 fc->user_ns = get_user_ns(ctx->ipc_ns->user_ns);

 mnt = fc_mount(fc);
 put_fs_context(fc);
 return mnt;
}
