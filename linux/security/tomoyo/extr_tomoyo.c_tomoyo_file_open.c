
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_flags; int f_path; } ;
struct TYPE_2__ {scalar_t__ in_execve; } ;


 TYPE_1__* current ;
 int tomoyo_check_open_permission (int ,int *,int ) ;
 int tomoyo_domain () ;

__attribute__((used)) static int tomoyo_file_open(struct file *f)
{

 if (current->in_execve)
  return 0;
 return tomoyo_check_open_permission(tomoyo_domain(), &f->f_path,
         f->f_flags);
}
