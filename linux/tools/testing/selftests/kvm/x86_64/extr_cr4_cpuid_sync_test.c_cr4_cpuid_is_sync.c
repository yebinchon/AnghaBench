
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int X86_CR4_OSXSAVE ;
 int X86_FEATURE_OSXSAVE ;
 int get_cr4 () ;

__attribute__((used)) static inline bool cr4_cpuid_is_sync(void)
{
 int func, subfunc;
 uint32_t eax, ebx, ecx, edx;
 uint64_t cr4;

 func = 0x1;
 subfunc = 0x0;
 __asm__ __volatile__("cpuid"
        : "=a"(eax), "=b"(ebx), "=c"(ecx), "=d"(edx)
        : "a"(func), "c"(subfunc));

 cr4 = get_cr4();

 return (!!(ecx & X86_FEATURE_OSXSAVE)) == (!!(cr4 & X86_CR4_OSXSAVE));
}
