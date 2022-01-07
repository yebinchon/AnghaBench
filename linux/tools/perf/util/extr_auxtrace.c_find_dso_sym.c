
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct symbol {scalar_t__ start; scalar_t__ end; } ;
struct dso {int dummy; } ;


 int EINVAL ;
 struct symbol* dso__first_symbol (struct dso*) ;
 struct symbol* dso__next_symbol (struct symbol*) ;
 scalar_t__ dso_sym_match (struct symbol*,char const*,int*,int) ;
 int print_duplicate_syms (struct dso*,char const*) ;
 int sym_not_found_error (char const*,int) ;

__attribute__((used)) static int find_dso_sym(struct dso *dso, const char *sym_name, u64 *start,
   u64 *size, int idx)
{
 struct symbol *sym;
 int cnt = 0;

 *start = 0;
 *size = 0;

 sym = dso__first_symbol(dso);
 while (sym) {
  if (*start) {
   if (!*size)
    *size = sym->start - *start;
   if (idx > 0) {
    if (*size)
     return 1;
   } else if (dso_sym_match(sym, sym_name, &cnt, idx)) {
    print_duplicate_syms(dso, sym_name);
    return -EINVAL;
   }
  } else if (dso_sym_match(sym, sym_name, &cnt, idx)) {
   *start = sym->start;
   *size = sym->end - sym->start;
  }
  sym = dso__next_symbol(sym);
 }

 if (!*start)
  return sym_not_found_error(sym_name, idx);

 return 0;
}
