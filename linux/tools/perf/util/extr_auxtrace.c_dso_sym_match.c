
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {scalar_t__ binding; int name; } ;


 scalar_t__ STB_GLOBAL ;
 int arch__compare_symbol_names (char const*,int ) ;

__attribute__((used)) static bool dso_sym_match(struct symbol *sym, const char *name, int *cnt,
     int idx)
{

 return !arch__compare_symbol_names(name, sym->name) &&
        ((!idx && sym->binding == STB_GLOBAL) ||
  (idx > 0 && ++*cnt == idx) ||
  idx < 0);
}
