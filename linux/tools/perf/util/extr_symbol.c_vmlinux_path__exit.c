
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ***** vmlinux_path ;
 scalar_t__ vmlinux_path__nr_entries ;
 int zfree (int ******) ;

__attribute__((used)) static void vmlinux_path__exit(void)
{
 while (--vmlinux_path__nr_entries >= 0)
  zfree(&vmlinux_path[vmlinux_path__nr_entries]);
 vmlinux_path__nr_entries = 0;

 zfree(&vmlinux_path);
}
