
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int call_int_hook (int ,int ,struct file*) ;
 int file_receive ;

int security_file_receive(struct file *file)
{
 return call_int_hook(file_receive, 0, file);
}
