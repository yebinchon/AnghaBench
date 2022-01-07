
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strdup (char const*) ;
 int ** vmlinux_path ;
 size_t vmlinux_path__nr_entries ;

__attribute__((used)) static int vmlinux_path__add(const char *new_entry)
{
 vmlinux_path[vmlinux_path__nr_entries] = strdup(new_entry);
 if (vmlinux_path[vmlinux_path__nr_entries] == ((void*)0))
  return -1;
 ++vmlinux_path__nr_entries;

 return 0;
}
