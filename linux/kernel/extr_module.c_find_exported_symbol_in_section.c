
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symsearch {int start; int stop; } ;
struct module {int dummy; } ;
struct kernel_symbol {int dummy; } ;
struct find_symbol_arg {int name; } ;


 struct kernel_symbol* bsearch (int ,int,int,int,int ) ;
 scalar_t__ check_exported_symbol (struct symsearch const*,struct module*,struct kernel_symbol*,void*) ;
 int cmp_name ;

__attribute__((used)) static bool find_exported_symbol_in_section(const struct symsearch *syms,
         struct module *owner,
         void *data)
{
 struct find_symbol_arg *fsa = data;
 struct kernel_symbol *sym;

 sym = bsearch(fsa->name, syms->start, syms->stop - syms->start,
   sizeof(struct kernel_symbol), cmp_name);

 if (sym != ((void*)0) && check_exported_symbol(syms, owner,
       sym - syms->start, data))
  return 1;

 return 0;
}
