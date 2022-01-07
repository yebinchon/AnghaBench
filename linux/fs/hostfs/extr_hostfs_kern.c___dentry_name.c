
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {char* s_fs_info; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (char*) ;
 int PATH_MAX ;
 int __putname (char*) ;
 char* dentry_path_raw (struct dentry*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *__dentry_name(struct dentry *dentry, char *name)
{
 char *p = dentry_path_raw(dentry, name, PATH_MAX);
 char *root;
 size_t len;

 root = dentry->d_sb->s_fs_info;
 len = strlen(root);
 if (IS_ERR(p)) {
  __putname(name);
  return ((void*)0);
 }





 BUG_ON(p + strlen(p) + 1 != name + PATH_MAX);

 strlcpy(name, root, PATH_MAX);
 if (len > p - name) {
  __putname(name);
  return ((void*)0);
 }

 if (p > name + len)
  strcpy(name + len, p);

 return name;
}
