
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int MSR_IA32_TSC ;
 int TSC_ADJUST_VALUE ;
 scalar_t__ TSC_OFFSET_VALUE ;
 int check_ia32_tsc_adjust (int) ;
 scalar_t__ rdtsc () ;
 int wrmsr (int ,scalar_t__) ;

__attribute__((used)) static void l2_guest_code(void)
{
 uint64_t l1_tsc = rdtsc() - TSC_OFFSET_VALUE;

 wrmsr(MSR_IA32_TSC, l1_tsc - TSC_ADJUST_VALUE);
 check_ia32_tsc_adjust(-2 * TSC_ADJUST_VALUE);


 __asm__ __volatile__("vmcall");
}
