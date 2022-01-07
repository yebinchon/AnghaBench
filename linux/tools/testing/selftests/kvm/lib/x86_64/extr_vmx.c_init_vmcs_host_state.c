
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct desc64 {int dummy; } ;


 int HOST_CR0 ;
 int HOST_CR3 ;
 int HOST_CR4 ;
 int HOST_CS_SELECTOR ;
 int HOST_DS_SELECTOR ;
 int HOST_ES_SELECTOR ;
 int HOST_FS_BASE ;
 int HOST_FS_SELECTOR ;
 int HOST_GDTR_BASE ;
 int HOST_GS_BASE ;
 int HOST_GS_SELECTOR ;
 int HOST_IA32_EFER ;
 int HOST_IA32_PAT ;
 int HOST_IA32_PERF_GLOBAL_CTRL ;
 int HOST_IA32_SYSENTER_CS ;
 int HOST_IA32_SYSENTER_EIP ;
 int HOST_IA32_SYSENTER_ESP ;
 int HOST_IDTR_BASE ;
 int HOST_SS_SELECTOR ;
 int HOST_TR_BASE ;
 int HOST_TR_SELECTOR ;
 int MSR_CORE_PERF_GLOBAL_CTRL ;
 int MSR_EFER ;
 int MSR_FS_BASE ;
 int MSR_GS_BASE ;
 int MSR_IA32_CR_PAT ;
 int MSR_IA32_SYSENTER_CS ;
 int MSR_IA32_SYSENTER_EIP ;
 int MSR_IA32_SYSENTER_ESP ;
 int VM_EXIT_CONTROLS ;
 int VM_EXIT_LOAD_IA32_EFER ;
 int VM_EXIT_LOAD_IA32_PAT ;
 int VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL ;
 scalar_t__ get_cr0 () ;
 scalar_t__ get_cr3 () ;
 scalar_t__ get_cr4 () ;
 scalar_t__ get_cs () ;
 scalar_t__ get_desc64_base (struct desc64*) ;
 scalar_t__ get_ds () ;
 scalar_t__ get_es () ;
 scalar_t__ get_fs () ;
 scalar_t__ get_gdt_base () ;
 scalar_t__ get_gs () ;
 scalar_t__ get_idt_base () ;
 scalar_t__ get_ss () ;
 scalar_t__ get_tr () ;
 scalar_t__ rdmsr (int ) ;
 int vmreadz (int ) ;
 int vmwrite (int ,scalar_t__) ;

__attribute__((used)) static inline void init_vmcs_host_state(void)
{
 uint32_t exit_controls = vmreadz(VM_EXIT_CONTROLS);

 vmwrite(HOST_ES_SELECTOR, get_es());
 vmwrite(HOST_CS_SELECTOR, get_cs());
 vmwrite(HOST_SS_SELECTOR, get_ss());
 vmwrite(HOST_DS_SELECTOR, get_ds());
 vmwrite(HOST_FS_SELECTOR, get_fs());
 vmwrite(HOST_GS_SELECTOR, get_gs());
 vmwrite(HOST_TR_SELECTOR, get_tr());

 if (exit_controls & VM_EXIT_LOAD_IA32_PAT)
  vmwrite(HOST_IA32_PAT, rdmsr(MSR_IA32_CR_PAT));
 if (exit_controls & VM_EXIT_LOAD_IA32_EFER)
  vmwrite(HOST_IA32_EFER, rdmsr(MSR_EFER));
 if (exit_controls & VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL)
  vmwrite(HOST_IA32_PERF_GLOBAL_CTRL,
   rdmsr(MSR_CORE_PERF_GLOBAL_CTRL));

 vmwrite(HOST_IA32_SYSENTER_CS, rdmsr(MSR_IA32_SYSENTER_CS));

 vmwrite(HOST_CR0, get_cr0());
 vmwrite(HOST_CR3, get_cr3());
 vmwrite(HOST_CR4, get_cr4());
 vmwrite(HOST_FS_BASE, rdmsr(MSR_FS_BASE));
 vmwrite(HOST_GS_BASE, rdmsr(MSR_GS_BASE));
 vmwrite(HOST_TR_BASE,
  get_desc64_base((struct desc64 *)(get_gdt_base() + get_tr())));
 vmwrite(HOST_GDTR_BASE, get_gdt_base());
 vmwrite(HOST_IDTR_BASE, get_idt_base());
 vmwrite(HOST_IA32_SYSENTER_ESP, rdmsr(MSR_IA32_SYSENTER_ESP));
 vmwrite(HOST_IA32_SYSENTER_EIP, rdmsr(MSR_IA32_SYSENTER_EIP));
}
