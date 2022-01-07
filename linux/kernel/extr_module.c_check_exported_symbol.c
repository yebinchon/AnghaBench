
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symsearch {scalar_t__ licence; int * start; int crcs; scalar_t__ unused; } ;
struct module {int dummy; } ;
struct find_symbol_arg {int * sym; int crc; struct module* owner; int name; scalar_t__ warn; int gplok; } ;


 scalar_t__ GPL_ONLY ;
 scalar_t__ WILL_BE_GPL_ONLY ;
 int pr_warn (char*,...) ;
 int symversion (int ,unsigned int) ;

__attribute__((used)) static bool check_exported_symbol(const struct symsearch *syms,
      struct module *owner,
      unsigned int symnum, void *data)
{
 struct find_symbol_arg *fsa = data;

 if (!fsa->gplok) {
  if (syms->licence == GPL_ONLY)
   return 0;
  if (syms->licence == WILL_BE_GPL_ONLY && fsa->warn) {
   pr_warn("Symbol %s is being used by a non-GPL module, "
    "which will not be allowed in the future\n",
    fsa->name);
  }
 }
 fsa->owner = owner;
 fsa->crc = symversion(syms->crcs, symnum);
 fsa->sym = &syms->start[symnum];
 return 1;
}
