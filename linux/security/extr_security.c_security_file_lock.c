
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int call_int_hook (int ,int ,struct file*,unsigned int) ;
 int file_lock ;

int security_file_lock(struct file *file, unsigned int cmd)
{
 return call_int_hook(file_lock, 0, file, cmd);
}
