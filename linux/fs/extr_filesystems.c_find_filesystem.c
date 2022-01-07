
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {int * name; struct file_system_type* next; } ;


 struct file_system_type* file_systems ;
 scalar_t__ strncmp (int *,char const*,unsigned int) ;

__attribute__((used)) static struct file_system_type **find_filesystem(const char *name, unsigned len)
{
 struct file_system_type **p;
 for (p = &file_systems; *p; p = &(*p)->next)
  if (strncmp((*p)->name, name, len) == 0 &&
      !(*p)->name[len])
   break;
 return p;
}
