
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_cpuid_entry2 {int function; scalar_t__ index; scalar_t__ flags; unsigned long eax; int * padding; } ;
struct kvm_cpuid2 {int nent; struct kvm_cpuid_entry2* entries; } ;


 int TEST_ASSERT (int,char*,...) ;
 int smt_possible () ;

__attribute__((used)) static void test_hv_cpuid(struct kvm_cpuid2 *hv_cpuid_entries,
     int evmcs_enabled)
{
 int i;

 if (!evmcs_enabled)
  TEST_ASSERT(hv_cpuid_entries->nent == 6,
       "KVM_GET_SUPPORTED_HV_CPUID should return 6 entries"
       " when Enlightened VMCS is disabled (returned %d)",
       hv_cpuid_entries->nent);
 else
  TEST_ASSERT(hv_cpuid_entries->nent == 7,
       "KVM_GET_SUPPORTED_HV_CPUID should return 7 entries"
       " when Enlightened VMCS is enabled (returned %d)",
       hv_cpuid_entries->nent);

 for (i = 0; i < hv_cpuid_entries->nent; i++) {
  struct kvm_cpuid_entry2 *entry = &hv_cpuid_entries->entries[i];

  TEST_ASSERT((entry->function >= 0x40000000) &&
       (entry->function <= 0x4000000A),
       "function %lx is our of supported range",
       entry->function);

  TEST_ASSERT(entry->index == 0,
       ".index field should be zero");

  TEST_ASSERT(entry->flags == 0,
       ".flags field should be zero");

  TEST_ASSERT(!entry->padding[0] && !entry->padding[1] &&
       !entry->padding[2], "padding should be zero");

  if (entry->function == 0x40000004) {
   int nononarchcs = !!(entry->eax & (1UL << 18));

   TEST_ASSERT(nononarchcs == !smt_possible(),
        "NoNonArchitecturalCoreSharing bit"
        " doesn't reflect SMT setting");
  }
 }

}
