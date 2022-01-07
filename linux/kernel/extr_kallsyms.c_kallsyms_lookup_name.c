
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char*) ;
 int KSYM_NAME_LEN ;
 unsigned int kallsyms_expand_symbol (unsigned int,char*,int ) ;
 unsigned long kallsyms_num_syms ;
 unsigned long kallsyms_sym_address (unsigned long) ;
 unsigned long module_kallsyms_lookup_name (char const*) ;
 scalar_t__ strcmp (char*,char const*) ;

unsigned long kallsyms_lookup_name(const char *name)
{
 char namebuf[KSYM_NAME_LEN];
 unsigned long i;
 unsigned int off;

 for (i = 0, off = 0; i < kallsyms_num_syms; i++) {
  off = kallsyms_expand_symbol(off, namebuf, ARRAY_SIZE(namebuf));

  if (strcmp(namebuf, name) == 0)
   return kallsyms_sym_address(i);
 }
 return module_kallsyms_lookup_name(name);
}
