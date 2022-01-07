
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_security_struct {int fown_sid; } ;
struct file {int dummy; } ;


 int current_sid () ;
 struct file_security_struct* selinux_file (struct file*) ;

__attribute__((used)) static void selinux_file_set_fowner(struct file *file)
{
 struct file_security_struct *fsec;

 fsec = selinux_file(file);
 fsec->fown_sid = current_sid();
}
