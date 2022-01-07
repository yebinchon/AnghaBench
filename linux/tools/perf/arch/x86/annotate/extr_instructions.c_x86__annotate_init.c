
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch {int initialized; } ;


 int SYMBOL_ANNOTATE_ERRNO__ARCH_INIT_CPUID_PARSING ;
 scalar_t__ x86__cpuid_parse (struct arch*,char*) ;

__attribute__((used)) static int x86__annotate_init(struct arch *arch, char *cpuid)
{
 int err = 0;

 if (arch->initialized)
  return 0;

 if (cpuid) {
  if (x86__cpuid_parse(arch, cpuid))
   err = SYMBOL_ANNOTATE_ERRNO__ARCH_INIT_CPUID_PARSING;
 }

 arch->initialized = 1;
 return err;
}
