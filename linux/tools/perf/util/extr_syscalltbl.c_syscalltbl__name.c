
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscalltbl {int audit_machine; } ;


 char const* audit_syscall_to_name (int,int ) ;

const char *syscalltbl__name(const struct syscalltbl *tbl, int id)
{
 return audit_syscall_to_name(id, tbl->audit_machine);
}
