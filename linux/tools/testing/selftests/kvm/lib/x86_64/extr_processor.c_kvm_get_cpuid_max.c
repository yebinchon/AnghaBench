
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int eax; } ;


 TYPE_1__* kvm_get_supported_cpuid_entry (int) ;

uint32_t kvm_get_cpuid_max(void)
{
 return kvm_get_supported_cpuid_entry(0x80000000)->eax;
}
