
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int user_ns; } ;
struct kernfs_fs_context {int magic; int root; struct net* ns_tag; } ;
struct fs_context {int sb_flags; int global; int user_ns; int * ops; struct kernfs_fs_context* fs_private; } ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int KOBJ_NS_TYPE_NET ;
 int SB_KERNMOUNT ;
 int SYSFS_MAGIC ;
 int get_user_ns (int ) ;
 int kobj_ns_current_may_mount (int ) ;
 struct net* kobj_ns_grab_current (int ) ;
 struct kernfs_fs_context* kzalloc (int,int ) ;
 int put_user_ns (int ) ;
 int sysfs_fs_context_ops ;
 int sysfs_root ;

__attribute__((used)) static int sysfs_init_fs_context(struct fs_context *fc)
{
 struct kernfs_fs_context *kfc;
 struct net *netns;

 if (!(fc->sb_flags & SB_KERNMOUNT)) {
  if (!kobj_ns_current_may_mount(KOBJ_NS_TYPE_NET))
   return -EPERM;
 }

 kfc = kzalloc(sizeof(struct kernfs_fs_context), GFP_KERNEL);
 if (!kfc)
  return -ENOMEM;

 kfc->ns_tag = netns = kobj_ns_grab_current(KOBJ_NS_TYPE_NET);
 kfc->root = sysfs_root;
 kfc->magic = SYSFS_MAGIC;
 fc->fs_private = kfc;
 fc->ops = &sysfs_fs_context_ops;
 if (netns) {
  put_user_ns(fc->user_ns);
  fc->user_ns = get_user_ns(netns->user_ns);
 }
 fc->global = 1;
 return 0;
}
