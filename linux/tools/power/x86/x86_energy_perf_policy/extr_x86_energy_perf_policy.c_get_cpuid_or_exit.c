
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_cpuid (unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int errx (int,char*) ;

__attribute__((used)) static void get_cpuid_or_exit(unsigned int leaf,
        unsigned int *eax, unsigned int *ebx,
        unsigned int *ecx, unsigned int *edx)
{
 if (!__get_cpuid(leaf, eax, ebx, ecx, edx))
  errx(1, "Processor not supported\n");
}
