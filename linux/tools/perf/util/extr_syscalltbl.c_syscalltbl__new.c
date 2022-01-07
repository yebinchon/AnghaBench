
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscalltbl {int audit_machine; } ;


 int audit_detect_machine () ;
 struct syscalltbl* malloc (int) ;

struct syscalltbl *syscalltbl__new(void)
{
 struct syscalltbl *tbl = malloc(sizeof(*tbl));
 if (tbl)
  tbl->audit_machine = audit_detect_machine();
 return tbl;
}
