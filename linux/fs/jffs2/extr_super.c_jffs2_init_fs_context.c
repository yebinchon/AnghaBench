
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int dummy; } ;
struct fs_context {int * ops; struct jffs2_sb_info* s_fs_info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int jffs2_context_ops ;
 struct jffs2_sb_info* kzalloc (int,int ) ;

__attribute__((used)) static int jffs2_init_fs_context(struct fs_context *fc)
{
 struct jffs2_sb_info *ctx;

 ctx = kzalloc(sizeof(struct jffs2_sb_info), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 fc->s_fs_info = ctx;
 fc->ops = &jffs2_context_ops;
 return 0;
}
