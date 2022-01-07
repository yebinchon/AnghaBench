
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {scalar_t__ binding; int start; int name; } ;
struct dso {int dummy; } ;


 unsigned int ARRAY_SIZE (char const**) ;
 scalar_t__ STB_GLOBAL ;
 struct symbol* dso__first_symbol (struct dso*) ;
 struct symbol* dso__next_symbol (struct symbol*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static u64 find_entry_trampoline(struct dso *dso)
{

 const char *syms[] = {
  "_entry_trampoline",
  "__entry_trampoline_start",
  "entry_SYSCALL_64_trampoline",
 };
 struct symbol *sym = dso__first_symbol(dso);
 unsigned int i;

 for (; sym; sym = dso__next_symbol(sym)) {
  if (sym->binding != STB_GLOBAL)
   continue;
  for (i = 0; i < ARRAY_SIZE(syms); i++) {
   if (!strcmp(sym->name, syms[i]))
    return sym->start;
  }
 }

 return 0;
}
