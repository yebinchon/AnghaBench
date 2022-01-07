
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_fs_context {int ipc_ns; } ;
struct fs_context {struct mqueue_fs_context* fs_private; } ;


 int kfree (struct mqueue_fs_context*) ;
 int put_ipc_ns (int ) ;

__attribute__((used)) static void mqueue_fs_context_free(struct fs_context *fc)
{
 struct mqueue_fs_context *ctx = fc->fs_private;

 put_ipc_ns(ctx->ipc_ns);
 kfree(ctx);
}
