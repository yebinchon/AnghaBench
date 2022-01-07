
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int * ops; } ;


 int gfs2_init_fs_context (struct fs_context*) ;
 int gfs2_meta_context_ops ;

__attribute__((used)) static int gfs2_meta_init_fs_context(struct fs_context *fc)
{
 int ret = gfs2_init_fs_context(fc);

 if (ret)
  return ret;

 fc->ops = &gfs2_meta_context_ops;
 return 0;
}
