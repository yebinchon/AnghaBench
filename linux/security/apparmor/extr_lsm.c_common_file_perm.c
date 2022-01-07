
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct aa_label {int dummy; } ;
struct TYPE_4__ {scalar_t__ dentry; } ;


 int EACCES ;
 struct aa_label* __begin_current_label_crit_section () ;
 int __end_current_label_crit_section (struct aa_label*) ;
 int aa_file_perm (char const*,struct aa_label*,struct file*,int ) ;
 TYPE_2__ aa_null ;

__attribute__((used)) static int common_file_perm(const char *op, struct file *file, u32 mask)
{
 struct aa_label *label;
 int error = 0;


 if (file->f_path.dentry == aa_null.dentry)
  return -EACCES;

 label = __begin_current_label_crit_section();
 error = aa_file_perm(op, label, file, mask);
 __end_current_label_crit_section(label);

 return error;
}
