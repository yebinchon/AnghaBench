
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

int main(void)
{
 unsigned int eax = 0, ebx = 0, ecx = 0, edx = 0;
 return __get_cpuid(0x15, &eax, &ebx, &ecx, &edx);
}
