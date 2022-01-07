
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_table {int value; int name; } ;


 scalar_t__ strcmp (char const*,int ) ;

int __lookup_constant(const struct constant_table *tbl, size_t tbl_size,
        const char *name, int not_found)
{
 unsigned int i;

 for (i = 0; i < tbl_size; i++)
  if (strcmp(name, tbl[i].name) == 0)
   return tbl[i].value;

 return not_found;
}
