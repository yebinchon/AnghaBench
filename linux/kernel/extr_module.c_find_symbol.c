
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct kernel_symbol {int dummy; } ;
struct find_symbol_arg {char const* name; int gplok; int warn; struct kernel_symbol const* sym; int * crc; struct module* owner; } ;
typedef int s32 ;


 scalar_t__ each_symbol_section (int ,struct find_symbol_arg*) ;
 int find_exported_symbol_in_section ;
 int pr_debug (char*,char const*) ;

const struct kernel_symbol *find_symbol(const char *name,
     struct module **owner,
     const s32 **crc,
     bool gplok,
     bool warn)
{
 struct find_symbol_arg fsa;

 fsa.name = name;
 fsa.gplok = gplok;
 fsa.warn = warn;

 if (each_symbol_section(find_exported_symbol_in_section, &fsa)) {
  if (owner)
   *owner = fsa.owner;
  if (crc)
   *crc = fsa.crc;
  return fsa.sym;
 }

 pr_debug("Failed to find symbol %s\n", name);
 return ((void*)0);
}
