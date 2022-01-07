
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct kvm_cpuid_entry2 {scalar_t__ function; scalar_t__ index; } ;
struct kvm_cpuid2 {int nent; struct kvm_cpuid_entry2* entries; } ;


 int TEST_ASSERT (struct kvm_cpuid_entry2*,char*,scalar_t__,scalar_t__) ;
 struct kvm_cpuid2* kvm_get_supported_cpuid () ;

struct kvm_cpuid_entry2 *
kvm_get_supported_cpuid_index(uint32_t function, uint32_t index)
{
 struct kvm_cpuid2 *cpuid;
 struct kvm_cpuid_entry2 *entry = ((void*)0);
 int i;

 cpuid = kvm_get_supported_cpuid();
 for (i = 0; i < cpuid->nent; i++) {
  if (cpuid->entries[i].function == function &&
      cpuid->entries[i].index == index) {
   entry = &cpuid->entries[i];
   break;
  }
 }

 TEST_ASSERT(entry, "Guest CPUID entry not found: (EAX=%x, ECX=%x).",
      function, index);
 return entry;
}
