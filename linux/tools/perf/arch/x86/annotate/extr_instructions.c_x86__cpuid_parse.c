
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch {unsigned int family; unsigned int model; } ;


 int sscanf (char*,char*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int x86__cpuid_parse(struct arch *arch, char *cpuid)
{
 unsigned int family, model, stepping;
 int ret;




 ret = sscanf(cpuid, "%*[^,],%u,%u,%u", &family, &model, &stepping);
 if (ret == 3) {
  arch->family = family;
  arch->model = model;
  return 0;
 }

 return -1;
}
