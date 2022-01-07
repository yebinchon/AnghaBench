
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_cpuid_entry2 {int edx; int eax; } ;


 int kvm_get_cpuid_max () ;
 struct kvm_cpuid_entry2* kvm_get_supported_cpuid_entry (int) ;

void kvm_get_cpu_address_width(unsigned int *pa_bits, unsigned int *va_bits)
{
 struct kvm_cpuid_entry2 *entry;
 bool pae;


 if (kvm_get_cpuid_max() < 0x80000008) {
  pae = kvm_get_supported_cpuid_entry(1)->edx & (1 << 6);
  *pa_bits = pae ? 36 : 32;
  *va_bits = 32;
 } else {
  entry = kvm_get_supported_cpuid_entry(0x80000008);
  *pa_bits = entry->eax & 0xff;
  *va_bits = (entry->eax >> 8) & 0xff;
 }
}
