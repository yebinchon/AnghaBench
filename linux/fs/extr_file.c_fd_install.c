
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int files; } ;


 int __fd_install (int ,unsigned int,struct file*) ;
 TYPE_1__* current ;

void fd_install(unsigned int fd, struct file *file)
{
 __fd_install(current->files, fd, file);
}
