
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch {int family; int model; } ;


 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static bool x86__ins_is_fused(struct arch *arch, const char *ins1,
         const char *ins2)
{
 if (arch->family != 6 || arch->model < 0x1e || strstr(ins2, "jmp"))
  return 0;

 if (arch->model == 0x1e) {

  if ((strstr(ins1, "cmp") && !strstr(ins1, "xchg")) ||
       strstr(ins1, "test")) {
   return 1;
  }
 } else {

  if ((strstr(ins1, "cmp") && !strstr(ins1, "xchg")) ||
       strstr(ins1, "test") ||
       strstr(ins1, "add") ||
       strstr(ins1, "sub") ||
       strstr(ins1, "and") ||
       strstr(ins1, "inc") ||
       strstr(ins1, "dec")) {
   return 1;
  }
 }

 return 0;
}
