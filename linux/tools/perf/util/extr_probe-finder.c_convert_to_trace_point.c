
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct probe_trace_point {unsigned long offset; unsigned long address; int retprobe; int symbol; } ;
struct TYPE_3__ {scalar_t__ st_value; } ;
typedef TYPE_1__ GElf_Sym ;
typedef int Dwfl_Module ;
typedef int Dwarf_Die ;
typedef scalar_t__ Dwarf_Addr ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 char* dwarf_diename (int *) ;
 scalar_t__ dwarf_entrypc (int *,scalar_t__*) ;
 scalar_t__ dwarf_highpc (int *,scalar_t__*) ;
 char* dwfl_module_addrsym (int *,scalar_t__,TYPE_1__*,int *) ;
 int pr_warning (char*,...) ;
 int strdup (char const*) ;

__attribute__((used)) static int convert_to_trace_point(Dwarf_Die *sp_die, Dwfl_Module *mod,
      Dwarf_Addr paddr, bool retprobe,
      const char *function,
      struct probe_trace_point *tp)
{
 Dwarf_Addr eaddr, highaddr;
 GElf_Sym sym;
 const char *symbol;


 if (dwarf_entrypc(sp_die, &eaddr) != 0) {
  pr_warning("Failed to get entry address of %s\n",
      dwarf_diename(sp_die));
  return -ENOENT;
 }
 if (dwarf_highpc(sp_die, &highaddr) != 0) {
  pr_warning("Failed to get end address of %s\n",
      dwarf_diename(sp_die));
  return -ENOENT;
 }
 if (paddr > highaddr) {
  pr_warning("Offset specified is greater than size of %s\n",
      dwarf_diename(sp_die));
  return -EINVAL;
 }

 symbol = dwarf_diename(sp_die);
 if (!symbol) {

  symbol = dwfl_module_addrsym(mod, paddr, &sym, ((void*)0));
  if (!symbol) {
   pr_warning("Failed to find symbol at 0x%lx\n",
       (unsigned long)paddr);
   return -ENOENT;
  }
  eaddr = sym.st_value;
 }
 tp->offset = (unsigned long)(paddr - eaddr);
 tp->address = (unsigned long)paddr;
 tp->symbol = strdup(symbol);
 if (!tp->symbol)
  return -ENOMEM;


 if (retprobe) {
  if (eaddr != paddr) {
   pr_warning("Failed to find \"%s%%return\",\n"
       " because %s is an inlined function and"
       " has no return point.\n", function,
       function);
   return -EINVAL;
  }
  tp->retprobe = 1;
 }

 return 0;
}
