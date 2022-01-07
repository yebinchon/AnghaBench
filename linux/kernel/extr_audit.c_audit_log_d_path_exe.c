
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct file {int f_path; } ;
struct audit_buffer {int dummy; } ;


 int audit_log_d_path (struct audit_buffer*,char*,int *) ;
 int audit_log_format (struct audit_buffer*,char*) ;
 int fput (struct file*) ;
 struct file* get_mm_exe_file (struct mm_struct*) ;

void audit_log_d_path_exe(struct audit_buffer *ab,
     struct mm_struct *mm)
{
 struct file *exe_file;

 if (!mm)
  goto out_null;

 exe_file = get_mm_exe_file(mm);
 if (!exe_file)
  goto out_null;

 audit_log_d_path(ab, " exe=", &exe_file->f_path);
 fput(exe_file);
 return;
out_null:
 audit_log_format(ab, " exe=(null)");
}
