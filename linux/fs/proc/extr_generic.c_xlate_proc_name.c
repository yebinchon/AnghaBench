
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;


 int __xlate_proc_name (char const*,struct proc_dir_entry**,char const**) ;
 int proc_subdir_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int xlate_proc_name(const char *name, struct proc_dir_entry **ret,
      const char **residual)
{
 int rv;

 read_lock(&proc_subdir_lock);
 rv = __xlate_proc_name(name, ret, residual);
 read_unlock(&proc_subdir_lock);
 return rv;
}
