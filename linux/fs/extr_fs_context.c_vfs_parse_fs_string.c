
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_parameter {char const* key; size_t size; int string; int type; } ;
struct fs_context {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int fs_value_is_string ;
 int kfree (int ) ;
 int kmemdup_nul (char const*,size_t,int ) ;
 int vfs_parse_fs_param (struct fs_context*,struct fs_parameter*) ;

int vfs_parse_fs_string(struct fs_context *fc, const char *key,
   const char *value, size_t v_size)
{
 int ret;

 struct fs_parameter param = {
  .key = key,
  .type = fs_value_is_string,
  .size = v_size,
 };

 if (v_size > 0) {
  param.string = kmemdup_nul(value, v_size, GFP_KERNEL);
  if (!param.string)
   return -ENOMEM;
 }

 ret = vfs_parse_fs_param(fc, &param);
 kfree(param.string);
 return ret;
}
