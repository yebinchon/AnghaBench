
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct vmx_pages {int vmxon_gpa; scalar_t__ vmxon; } ;


 int FEATURE_CONTROL_LOCKED ;
 int FEATURE_CONTROL_VMXON_ENABLED_OUTSIDE_SMX ;
 int MSR_IA32_FEATURE_CONTROL ;
 int MSR_IA32_VMX_CR0_FIXED0 ;
 int MSR_IA32_VMX_CR0_FIXED1 ;
 int MSR_IA32_VMX_CR4_FIXED0 ;
 int MSR_IA32_VMX_CR4_FIXED1 ;
 unsigned long X86_CR4_VMXE ;
 unsigned long rdmsr (int ) ;
 int vmcs_revision () ;
 scalar_t__ vmxon (int ) ;
 int wrmsr (int ,int) ;

bool prepare_for_vmx_operation(struct vmx_pages *vmx)
{
 uint64_t feature_control;
 uint64_t required;
 unsigned long cr0;
 unsigned long cr4;






 __asm__ __volatile__("mov %%cr0, %0" : "=r"(cr0) : : "memory");
 cr0 &= rdmsr(MSR_IA32_VMX_CR0_FIXED1);
 cr0 |= rdmsr(MSR_IA32_VMX_CR0_FIXED0);
 __asm__ __volatile__("mov %0, %%cr0" : : "r"(cr0) : "memory");

 __asm__ __volatile__("mov %%cr4, %0" : "=r"(cr4) : : "memory");
 cr4 &= rdmsr(MSR_IA32_VMX_CR4_FIXED1);
 cr4 |= rdmsr(MSR_IA32_VMX_CR4_FIXED0);

 cr4 |= X86_CR4_VMXE;
 __asm__ __volatile__("mov %0, %%cr4" : : "r"(cr4) : "memory");







 required = FEATURE_CONTROL_VMXON_ENABLED_OUTSIDE_SMX;
 required |= FEATURE_CONTROL_LOCKED;
 feature_control = rdmsr(MSR_IA32_FEATURE_CONTROL);
 if ((feature_control & required) != required)
  wrmsr(MSR_IA32_FEATURE_CONTROL, feature_control | required);


 *(uint32_t *)(vmx->vmxon) = vmcs_revision();
 if (vmxon(vmx->vmxon_gpa))
  return 0;

 return 1;
}
