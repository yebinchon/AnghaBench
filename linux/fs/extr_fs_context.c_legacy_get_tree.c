
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct legacy_fs_context {int legacy_data; } ;
struct fs_context {struct dentry* root; int source; int sb_flags; TYPE_1__* fs_type; struct legacy_fs_context* fs_private; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_2__ {struct dentry* (* mount ) (TYPE_1__*,int ,int ,int ) ;} ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* stub1 (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int legacy_get_tree(struct fs_context *fc)
{
 struct legacy_fs_context *ctx = fc->fs_private;
 struct super_block *sb;
 struct dentry *root;

 root = fc->fs_type->mount(fc->fs_type, fc->sb_flags,
          fc->source, ctx->legacy_data);
 if (IS_ERR(root))
  return PTR_ERR(root);

 sb = root->d_sb;
 BUG_ON(!sb);

 fc->root = root;
 return 0;
}
