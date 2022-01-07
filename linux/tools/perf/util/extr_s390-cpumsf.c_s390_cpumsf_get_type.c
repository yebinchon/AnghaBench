
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static int s390_cpumsf_get_type(const char *cpuid)
{
 int ret, family = 0;

 ret = sscanf(cpuid, "%*[^,],%u", &family);
 return (ret == 1) ? family : 0;
}
