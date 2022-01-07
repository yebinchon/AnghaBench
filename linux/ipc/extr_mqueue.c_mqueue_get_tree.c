
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_fs_context {int ipc_ns; } ;
struct fs_context {struct mqueue_fs_context* fs_private; } ;


 int get_tree_keyed (struct fs_context*,int ,int ) ;
 int mqueue_fill_super ;

__attribute__((used)) static int mqueue_get_tree(struct fs_context *fc)
{
 struct mqueue_fs_context *ctx = fc->fs_private;

 return get_tree_keyed(fc, mqueue_fill_super, ctx->ipc_ns);
}
