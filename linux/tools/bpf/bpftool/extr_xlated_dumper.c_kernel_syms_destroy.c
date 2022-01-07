
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_data {int sym_mapping; } ;


 int free (int ) ;

void kernel_syms_destroy(struct dump_data *dd)
{
 free(dd->sym_mapping);
}
