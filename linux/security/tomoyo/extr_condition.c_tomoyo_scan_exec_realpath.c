
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {int name; } ;
struct tomoyo_name_union {int dummy; } ;
struct file {int f_path; } ;


 int kfree (int ) ;
 int tomoyo_compare_name_union (struct tomoyo_path_info*,struct tomoyo_name_union const*) ;
 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;
 int tomoyo_realpath_from_path (int *) ;

__attribute__((used)) static bool tomoyo_scan_exec_realpath(struct file *file,
          const struct tomoyo_name_union *ptr,
          const bool match)
{
 bool result;
 struct tomoyo_path_info exe;

 if (!file)
  return 0;
 exe.name = tomoyo_realpath_from_path(&file->f_path);
 if (!exe.name)
  return 0;
 tomoyo_fill_path_info(&exe);
 result = tomoyo_compare_name_union(&exe, ptr);
 kfree(exe.name);
 return result == match;
}
