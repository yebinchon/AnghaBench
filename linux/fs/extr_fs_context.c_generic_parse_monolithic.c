
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int security; } ;


 int security_sb_eat_lsm_opts (char*,int *) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 char* strsep (char**,char*) ;
 int vfs_parse_fs_string (struct fs_context*,char*,char*,size_t) ;

int generic_parse_monolithic(struct fs_context *fc, void *data)
{
 char *options = data, *key;
 int ret = 0;

 if (!options)
  return 0;

 ret = security_sb_eat_lsm_opts(options, &fc->security);
 if (ret)
  return ret;

 while ((key = strsep(&options, ",")) != ((void*)0)) {
  if (*key) {
   size_t v_len = 0;
   char *value = strchr(key, '=');

   if (value) {
    if (value == key)
     continue;
    *value++ = 0;
    v_len = strlen(value);
   }
   ret = vfs_parse_fs_string(fc, key, value, v_len);
   if (ret < 0)
    break;
  }
 }

 return ret;
}
