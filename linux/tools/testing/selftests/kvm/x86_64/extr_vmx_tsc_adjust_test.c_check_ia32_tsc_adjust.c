
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int GUEST_ASSERT (int) ;
 int GUEST_SYNC (scalar_t__) ;
 int MSR_IA32_TSC_ADJUST ;
 scalar_t__ rdmsr (int ) ;

__attribute__((used)) static void check_ia32_tsc_adjust(int64_t max)
{
 int64_t adjust;

 adjust = rdmsr(MSR_IA32_TSC_ADJUST);
 GUEST_SYNC(adjust);
 GUEST_ASSERT(adjust <= max);
}
