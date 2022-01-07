
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint32_t ;
struct vmx_pages {int dummy; } ;


 uintptr_t CPU_BASED_USE_MSR_BITMAPS ;
 uintptr_t CPU_BASED_USE_TSC_OFFSETING ;
 int CPU_BASED_VM_EXEC_CONTROL ;
 uintptr_t EXIT_REASON_FAILED_VMENTRY ;
 uintptr_t EXIT_REASON_INVALID_STATE ;
 uintptr_t EXIT_REASON_VMCALL ;
 int GUEST_ASSERT (int) ;
 int GUEST_CR3 ;
 int GUEST_DONE () ;
 int L2_GUEST_STACK_SIZE ;
 int MSR_IA32_TSC ;
 int TSC_ADJUST_VALUE ;
 int TSC_OFFSET ;
 uintptr_t TSC_OFFSET_VALUE ;
 int VM_EXIT_REASON ;
 int check_ia32_tsc_adjust (int) ;
 int l2_guest_code ;
 int load_vmcs (struct vmx_pages*) ;
 int prepare_for_vmx_operation (struct vmx_pages*) ;
 int prepare_vmcs (struct vmx_pages*,int ,unsigned long*) ;
 int rdtsc () ;
 int vmlaunch () ;
 uintptr_t vmreadz (int ) ;
 int vmwrite (int ,uintptr_t) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static void l1_guest_code(struct vmx_pages *vmx_pages)
{

 unsigned long l2_guest_stack[64];
 uint32_t control;
 uintptr_t save_cr3;

 GUEST_ASSERT(rdtsc() < TSC_ADJUST_VALUE);
 wrmsr(MSR_IA32_TSC, rdtsc() - TSC_ADJUST_VALUE);
 check_ia32_tsc_adjust(-1 * TSC_ADJUST_VALUE);

 GUEST_ASSERT(prepare_for_vmx_operation(vmx_pages));
 GUEST_ASSERT(load_vmcs(vmx_pages));


 prepare_vmcs(vmx_pages, l2_guest_code,
       &l2_guest_stack[64]);
 control = vmreadz(CPU_BASED_VM_EXEC_CONTROL);
 control |= CPU_BASED_USE_MSR_BITMAPS | CPU_BASED_USE_TSC_OFFSETING;
 vmwrite(CPU_BASED_VM_EXEC_CONTROL, control);
 vmwrite(TSC_OFFSET, TSC_OFFSET_VALUE);


 save_cr3 = vmreadz(GUEST_CR3);
 vmwrite(GUEST_CR3, -1ull);
 GUEST_ASSERT(!vmlaunch());
 GUEST_ASSERT(vmreadz(VM_EXIT_REASON) ==
       (EXIT_REASON_FAILED_VMENTRY | EXIT_REASON_INVALID_STATE));
 check_ia32_tsc_adjust(-1 * TSC_ADJUST_VALUE);
 vmwrite(GUEST_CR3, save_cr3);

 GUEST_ASSERT(!vmlaunch());
 GUEST_ASSERT(vmreadz(VM_EXIT_REASON) == EXIT_REASON_VMCALL);

 check_ia32_tsc_adjust(-2 * TSC_ADJUST_VALUE);

 GUEST_DONE();
}
