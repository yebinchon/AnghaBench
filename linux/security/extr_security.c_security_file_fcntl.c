
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int call_int_hook (int ,int ,struct file*,unsigned int,unsigned long) ;
 int file_fcntl ;

int security_file_fcntl(struct file *file, unsigned int cmd, unsigned long arg)
{
 return call_int_hook(file_fcntl, 0, file, cmd, arg);
}
