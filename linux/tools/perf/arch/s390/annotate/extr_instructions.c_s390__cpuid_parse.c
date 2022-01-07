
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch {unsigned int family; scalar_t__ model; } ;


 int sscanf (char*,char*,unsigned int*,char*,char*,char*,char*) ;

__attribute__((used)) static int s390__cpuid_parse(struct arch *arch, char *cpuid)
{
 unsigned int family;
 char model[16], model_c[16], cpumf_v[16], cpumf_a[16];
 int ret;





 ret = sscanf(cpuid, "%*[^,],%u,%[^,],%[^,],%[^,],%s", &family, model_c,
       model, cpumf_v, cpumf_a);
 if (ret >= 2) {
  arch->family = family;
  arch->model = 0;
  return 0;
 }

 return -1;
}
