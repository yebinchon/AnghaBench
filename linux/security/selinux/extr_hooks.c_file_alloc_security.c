
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct file_security_struct {void* fown_sid; void* sid; } ;
struct file {int dummy; } ;


 void* current_sid () ;
 struct file_security_struct* selinux_file (struct file*) ;

__attribute__((used)) static int file_alloc_security(struct file *file)
{
 struct file_security_struct *fsec = selinux_file(file);
 u32 sid = current_sid();

 fsec->sid = sid;
 fsec->fown_sid = sid;

 return 0;
}
