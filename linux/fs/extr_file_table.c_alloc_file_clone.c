
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct file {int f_mapping; int f_path; } ;


 int IS_ERR (struct file*) ;
 struct file* alloc_file (int *,int,struct file_operations const*) ;
 int path_get (int *) ;

struct file *alloc_file_clone(struct file *base, int flags,
    const struct file_operations *fops)
{
 struct file *f = alloc_file(&base->f_path, flags, fops);
 if (!IS_ERR(f)) {
  path_get(&f->f_path);
  f->f_mapping = base->f_mapping;
 }
 return f;
}
