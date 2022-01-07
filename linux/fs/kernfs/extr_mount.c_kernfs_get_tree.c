
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_root; int s_flags; } ;
struct kernfs_super_info {TYPE_1__* root; int node; int ns; } ;
struct kernfs_fs_context {int new_sb_created; int ns_tag; TYPE_1__* root; } ;
struct fs_context {int root; struct kernfs_super_info* s_fs_info; struct kernfs_fs_context* fs_private; } ;
struct TYPE_2__ {int supers; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct super_block*) ;
 int PTR_ERR (struct super_block*) ;
 int SB_ACTIVE ;
 int deactivate_locked_super (struct super_block*) ;
 int dget (int ) ;
 int kernfs_fill_super (struct super_block*,struct kernfs_fs_context*) ;
 struct kernfs_super_info* kernfs_info (struct super_block*) ;
 int kernfs_mutex ;
 int kernfs_set_super ;
 int kernfs_test_super ;
 struct kernfs_super_info* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct super_block* sget_fc (struct fs_context*,int ,int ) ;

int kernfs_get_tree(struct fs_context *fc)
{
 struct kernfs_fs_context *kfc = fc->fs_private;
 struct super_block *sb;
 struct kernfs_super_info *info;
 int error;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->root = kfc->root;
 info->ns = kfc->ns_tag;
 INIT_LIST_HEAD(&info->node);

 fc->s_fs_info = info;
 sb = sget_fc(fc, kernfs_test_super, kernfs_set_super);
 if (IS_ERR(sb))
  return PTR_ERR(sb);

 if (!sb->s_root) {
  struct kernfs_super_info *info = kernfs_info(sb);

  kfc->new_sb_created = 1;

  error = kernfs_fill_super(sb, kfc);
  if (error) {
   deactivate_locked_super(sb);
   return error;
  }
  sb->s_flags |= SB_ACTIVE;

  mutex_lock(&kernfs_mutex);
  list_add(&info->node, &info->root->supers);
  mutex_unlock(&kernfs_mutex);
 }

 fc->root = dget(sb->s_root);
 return 0;
}
