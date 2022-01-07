
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct file {int f_path; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 TYPE_1__* current ;
 int fput (struct file*) ;
 struct file* get_mm_exe_file (struct mm_struct*) ;
 char* tomoyo_realpath_from_path (int *) ;

const char *tomoyo_get_exe(void)
{
 struct file *exe_file;
 const char *cp;
 struct mm_struct *mm = current->mm;

 if (!mm)
  return ((void*)0);
 exe_file = get_mm_exe_file(mm);
 if (!exe_file)
  return ((void*)0);

 cp = tomoyo_realpath_from_path(&exe_file->f_path);
 fput(exe_file);
 return cp;
}
