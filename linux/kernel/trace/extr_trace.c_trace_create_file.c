
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int pr_warn (char*,char const*) ;
 struct dentry* tracefs_create_file (char const*,int ,struct dentry*,void*,struct file_operations const*) ;

struct dentry *trace_create_file(const char *name,
     umode_t mode,
     struct dentry *parent,
     void *data,
     const struct file_operations *fops)
{
 struct dentry *ret;

 ret = tracefs_create_file(name, mode, parent, data, fops);
 if (!ret)
  pr_warn("Could not create tracefs '%s' entry\n", name);

 return ret;
}
