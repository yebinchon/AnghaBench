
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {int open_fds; int fd; } ;


 int kfree (struct fdtable*) ;
 int kvfree (int ) ;

__attribute__((used)) static void __free_fdtable(struct fdtable *fdt)
{
 kvfree(fdt->fd);
 kvfree(fdt->open_fds);
 kfree(fdt);
}
