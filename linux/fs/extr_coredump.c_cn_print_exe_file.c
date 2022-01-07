
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct core_name {int dummy; } ;
struct TYPE_2__ {char* comm; int mm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (char*) ;
 int PATH_MAX ;
 int PTR_ERR (char*) ;
 int cn_esc_printf (struct core_name*,char*,char*) ;
 TYPE_1__* current ;
 char* file_path (struct file*,char*,int ) ;
 int fput (struct file*) ;
 struct file* get_mm_exe_file (int ) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;

__attribute__((used)) static int cn_print_exe_file(struct core_name *cn)
{
 struct file *exe_file;
 char *pathbuf, *path;
 int ret;

 exe_file = get_mm_exe_file(current->mm);
 if (!exe_file)
  return cn_esc_printf(cn, "%s (path unknown)", current->comm);

 pathbuf = kmalloc(PATH_MAX, GFP_KERNEL);
 if (!pathbuf) {
  ret = -ENOMEM;
  goto put_exe_file;
 }

 path = file_path(exe_file, pathbuf, PATH_MAX);
 if (IS_ERR(path)) {
  ret = PTR_ERR(path);
  goto free_buf;
 }

 ret = cn_esc_printf(cn, "%s", path);

free_buf:
 kfree(pathbuf);
put_exe_file:
 fput(exe_file);
 return ret;
}
