
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kdb_symtab_t ;


 int KDB_SP_NEWLINE ;
 int KDB_SP_SYMSIZE ;
 int KDB_SP_VALUE ;
 int kdb_printf (char*,...) ;
 int kdb_symbol_print (unsigned long,int *,int) ;
 scalar_t__ kdbnearsym (unsigned long,int *) ;

void kdb_print_nameval(const char *name, unsigned long val)
{
 kdb_symtab_t symtab;
 kdb_printf("  %-11.11s ", name);
 if (kdbnearsym(val, &symtab))
  kdb_symbol_print(val, &symtab,
     KDB_SP_VALUE|KDB_SP_SYMSIZE|KDB_SP_NEWLINE);
 else
  kdb_printf("0x%lx\n", val);
}
