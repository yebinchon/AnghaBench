
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int inlined; int type; int binding; scalar_t__ start; scalar_t__ end; int name; } ;
struct dso {int dummy; } ;


 int assert (int) ;
 char* dso__demangle_sym (struct dso*,int ,char const*) ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,int ) ;
 struct symbol* symbol__new (scalar_t__,scalar_t__,int ,int ,char const*) ;

__attribute__((used)) static struct symbol *new_inline_sym(struct dso *dso,
         struct symbol *base_sym,
         const char *funcname)
{
 struct symbol *inline_sym;
 char *demangled = ((void*)0);

 if (!funcname)
  funcname = "??";

 if (dso) {
  demangled = dso__demangle_sym(dso, 0, funcname);
  if (demangled)
   funcname = demangled;
 }

 if (base_sym && strcmp(funcname, base_sym->name) == 0) {

  inline_sym = base_sym;



  assert(!base_sym->inlined);
 } else {

  inline_sym = symbol__new(base_sym ? base_sym->start : 0,
      base_sym ? (base_sym->end - base_sym->start) : 0,
      base_sym ? base_sym->binding : 0,
      base_sym ? base_sym->type : 0,
      funcname);
  if (inline_sym)
   inline_sym->inlined = 1;
 }

 free(demangled);

 return inline_sym;
}
