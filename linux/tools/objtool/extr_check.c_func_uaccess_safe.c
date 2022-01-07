
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int uaccess_safe; } ;



__attribute__((used)) static inline bool func_uaccess_safe(struct symbol *func)
{
 if (func)
  return func->uaccess_safe;

 return 0;
}
