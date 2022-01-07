
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscalltbl {int audit_machine; } ;


 int audit_name_to_syscall (char const*,int ) ;

int syscalltbl__id(struct syscalltbl *tbl, const char *name)
{
 return audit_name_to_syscall(name, tbl->audit_machine);
}
