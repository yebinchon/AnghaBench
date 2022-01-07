
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long sym_start; } ;
typedef TYPE_1__ kdb_symtab_t ;


 int KDB_ARGCOUNT ;
 int KDB_ENABLE_FLOW_CTRL ;
 int KDB_ENABLE_MEM_READ ;
 int KDB_INVADDRFMT ;
 int KDB_NOPERM ;
 int KDB_NOTIMP ;
 int kdb_check_flags (int,int ,int) ;
 int kdb_check_regs () ;
 int kdb_cmd_enabled ;
 int kdbgetsymval (char*,TYPE_1__*) ;
 int kdbgetularg (char const*,unsigned long*) ;
 int kdbgetulenv (char*,unsigned long*) ;
 int kdbnearsym (unsigned long,TYPE_1__*) ;
 char* strpbrk (char*,char*) ;

int kdbgetaddrarg(int argc, const char **argv, int *nextarg,
    unsigned long *value, long *offset,
    char **name)
{
 unsigned long addr;
 unsigned long off = 0;
 int positive;
 int diag;
 int found = 0;
 char *symname;
 char symbol = '\0';
 char *cp;
 kdb_symtab_t symtab;






 if (!kdb_check_flags(KDB_ENABLE_MEM_READ | KDB_ENABLE_FLOW_CTRL,
        kdb_cmd_enabled, 0))
  return KDB_NOPERM;
 if (*nextarg > argc)
  return KDB_ARGCOUNT;

 symname = (char *)argv[*nextarg];







 cp = strpbrk(symname, "+-");
 if (cp != ((void*)0)) {
  symbol = *cp;
  *cp++ = '\0';
 }

 if (symname[0] == '$') {
  diag = kdbgetulenv(&symname[1], &addr);
  if (diag)
   return diag;
 } else if (symname[0] == '%') {
  diag = kdb_check_regs();
  if (diag)
   return diag;



  return KDB_NOTIMP;
 } else {
  found = kdbgetsymval(symname, &symtab);
  if (found) {
   addr = symtab.sym_start;
  } else {
   diag = kdbgetularg(argv[*nextarg], &addr);
   if (diag)
    return diag;
  }
 }

 if (!found)
  found = kdbnearsym(addr, &symtab);

 (*nextarg)++;

 if (name)
  *name = symname;
 if (value)
  *value = addr;
 if (offset && name && *name)
  *offset = addr - symtab.sym_start;

 if ((*nextarg > argc)
  && (symbol == '\0'))
  return 0;





 if (symbol == '\0') {
  if ((argv[*nextarg][0] != '+')
   && (argv[*nextarg][0] != '-')) {



   return 0;
  } else {
   positive = (argv[*nextarg][0] == '+');
   (*nextarg)++;
  }
 } else
  positive = (symbol == '+');




 if ((*nextarg > argc)
  && (symbol == '\0')) {
  return KDB_INVADDRFMT;
 }

 if (!symbol) {
  cp = (char *)argv[*nextarg];
  (*nextarg)++;
 }

 diag = kdbgetularg(cp, &off);
 if (diag)
  return diag;

 if (!positive)
  off = -off;

 if (offset)
  *offset += off;

 if (value)
  *value += off;

 return 0;
}
