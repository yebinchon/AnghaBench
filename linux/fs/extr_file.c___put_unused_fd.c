
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_struct {unsigned int next_fd; } ;
struct fdtable {int dummy; } ;


 int __clear_open_fd (unsigned int,struct fdtable*) ;
 struct fdtable* files_fdtable (struct files_struct*) ;

__attribute__((used)) static void __put_unused_fd(struct files_struct *files, unsigned int fd)
{
 struct fdtable *fdt = files_fdtable(files);
 __clear_open_fd(fd, fdt);
 if (fd < files->next_fd)
  files->next_fd = fd;
}
