
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;


 int ENOENT ;
 int WARN (int,char*,char const*) ;
 struct proc_dir_entry* pde_subdir_find (struct proc_dir_entry*,char const*,unsigned int) ;
 struct proc_dir_entry proc_root ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int __xlate_proc_name(const char *name, struct proc_dir_entry **ret,
        const char **residual)
{
 const char *cp = name, *next;
 struct proc_dir_entry *de;
 unsigned int len;

 de = *ret;
 if (!de)
  de = &proc_root;

 while (1) {
  next = strchr(cp, '/');
  if (!next)
   break;

  len = next - cp;
  de = pde_subdir_find(de, cp, len);
  if (!de) {
   WARN(1, "name '%s'\n", name);
   return -ENOENT;
  }
  cp += len + 1;
 }
 *residual = cp;
 *ret = de;
 return 0;
}
