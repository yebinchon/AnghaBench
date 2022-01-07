
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int call_void_hook (int ,struct file*) ;
 int file_set_fowner ;

void security_file_set_fowner(struct file *file)
{
 call_void_hook(file_set_fowner, file);
}
