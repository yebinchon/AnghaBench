
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmx_pages {int dummy; } ;


 int DONE ;
 int GUEST_ASSERT (int ) ;
 int MSR_IA32_APICBASE ;
 int X2APIC_ENABLE ;
 int prepare_for_vmx_operation (struct vmx_pages*) ;
 int rdmsr (int ) ;
 int self_smi () ;
 int sync_with_host (int) ;
 int wrmsr (int ,int) ;

void guest_code(struct vmx_pages *vmx_pages)
{
 uint64_t apicbase = rdmsr(MSR_IA32_APICBASE);

 sync_with_host(1);

 wrmsr(MSR_IA32_APICBASE, apicbase | X2APIC_ENABLE);

 sync_with_host(2);

 self_smi();

 sync_with_host(4);

 if (vmx_pages) {
  GUEST_ASSERT(prepare_for_vmx_operation(vmx_pages));

  sync_with_host(5);

  self_smi();

  sync_with_host(7);
 }

 sync_with_host(DONE);
}
