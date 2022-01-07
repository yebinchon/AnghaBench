
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mqueue_fs_context {TYPE_2__* ipc_ns; } ;
struct fs_context {int * ops; struct mqueue_fs_context* fs_private; int user_ns; } ;
struct TYPE_6__ {TYPE_1__* nsproxy; } ;
struct TYPE_5__ {int user_ns; } ;
struct TYPE_4__ {int ipc_ns; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_3__* current ;
 TYPE_2__* get_ipc_ns (int ) ;
 int get_user_ns (int ) ;
 struct mqueue_fs_context* kzalloc (int,int ) ;
 int mqueue_fs_context_ops ;
 int put_user_ns (int ) ;

__attribute__((used)) static int mqueue_init_fs_context(struct fs_context *fc)
{
 struct mqueue_fs_context *ctx;

 ctx = kzalloc(sizeof(struct mqueue_fs_context), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->ipc_ns = get_ipc_ns(current->nsproxy->ipc_ns);
 put_user_ns(fc->user_ns);
 fc->user_ns = get_user_ns(ctx->ipc_ns->user_ns);
 fc->fs_private = ctx;
 fc->ops = &mqueue_fs_context_ops;
 return 0;
}
