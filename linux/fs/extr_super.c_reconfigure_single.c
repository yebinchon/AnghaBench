
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct fs_context {int dummy; } ;


 scalar_t__ IS_ERR (struct fs_context*) ;
 int MS_RMT_MASK ;
 int PTR_ERR (struct fs_context*) ;
 struct fs_context* fs_context_for_reconfigure (int ,int,int ) ;
 int parse_monolithic_mount_data (struct fs_context*,void*) ;
 int put_fs_context (struct fs_context*) ;
 int reconfigure_super (struct fs_context*) ;

__attribute__((used)) static int reconfigure_single(struct super_block *s,
         int flags, void *data)
{
 struct fs_context *fc;
 int ret;






 fc = fs_context_for_reconfigure(s->s_root, flags, MS_RMT_MASK);
 if (IS_ERR(fc))
  return PTR_ERR(fc);

 ret = parse_monolithic_mount_data(fc, data);
 if (ret < 0)
  goto out;

 ret = reconfigure_super(fc);
out:
 put_fs_context(fc);
 return ret;
}
