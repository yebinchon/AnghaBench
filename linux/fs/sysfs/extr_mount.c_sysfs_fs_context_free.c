
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_fs_context {scalar_t__ ns_tag; } ;
struct fs_context {struct kernfs_fs_context* fs_private; } ;


 int KOBJ_NS_TYPE_NET ;
 int kernfs_free_fs_context (struct fs_context*) ;
 int kfree (struct kernfs_fs_context*) ;
 int kobj_ns_drop (int ,scalar_t__) ;

__attribute__((used)) static void sysfs_fs_context_free(struct fs_context *fc)
{
 struct kernfs_fs_context *kfc = fc->fs_private;

 if (kfc->ns_tag)
  kobj_ns_drop(KOBJ_NS_TYPE_NET, kfc->ns_tag);
 kernfs_free_fs_context(fc);
 kfree(kfc);
}
