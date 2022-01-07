
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_cpuid (char*,size_t,char*) ;

int
get_cpuid(char *buffer, size_t sz)
{
 return __get_cpuid(buffer, sz, "%s,%u,%u,%u$");
}
