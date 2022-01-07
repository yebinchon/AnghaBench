
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sym_start; } ;
typedef TYPE_1__ kdb_symtab_t ;


 int AR ;
 scalar_t__ KDB_DEBUG (int ) ;
 int kallsyms_lookup_name (char const*) ;
 int kdb_printf (char*,...) ;
 int memset (TYPE_1__*,int ,int) ;

int kdbgetsymval(const char *symname, kdb_symtab_t *symtab)
{
 if (KDB_DEBUG(AR))
  kdb_printf("kdbgetsymval: symname=%s, symtab=%px\n", symname,
      symtab);
 memset(symtab, 0, sizeof(*symtab));
 symtab->sym_start = kallsyms_lookup_name(symname);
 if (symtab->sym_start) {
  if (KDB_DEBUG(AR))
   kdb_printf("kdbgetsymval: returns 1, "
       "symtab->sym_start=0x%lx\n",
       symtab->sym_start);
  return 1;
 }
 if (KDB_DEBUG(AR))
  kdb_printf("kdbgetsymval: returns 0\n");
 return 0;
}
