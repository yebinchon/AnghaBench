
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct legacy_fs_context {int dummy; } ;
struct fs_context {int * ops; int fs_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kzalloc (int,int ) ;
 int legacy_fs_context_ops ;

__attribute__((used)) static int legacy_init_fs_context(struct fs_context *fc)
{
 fc->fs_private = kzalloc(sizeof(struct legacy_fs_context), GFP_KERNEL);
 if (!fc->fs_private)
  return -ENOMEM;
 fc->ops = &legacy_fs_context_ops;
 return 0;
}
