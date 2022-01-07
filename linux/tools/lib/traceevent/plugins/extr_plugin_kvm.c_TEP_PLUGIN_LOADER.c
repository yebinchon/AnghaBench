
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int TEP_FUNC_ARG_INT ;
 int TEP_FUNC_ARG_LONG ;
 int TEP_FUNC_ARG_VOID ;
 int init_disassembler () ;
 int kvm_emulate_insn_handler ;
 int kvm_exit_handler ;
 int kvm_mmu_get_page_handler ;
 int kvm_mmu_print_role ;
 int kvm_nested_vmexit_handler ;
 int kvm_nested_vmexit_inject_handler ;
 int process_is_writable_pte ;
 int tep_register_event_handler (struct tep_handle*,int,char*,char*,int ,int *) ;
 int tep_register_print_function (struct tep_handle*,int ,int ,char*,int ,int ) ;

int TEP_PLUGIN_LOADER(struct tep_handle *tep)
{
 init_disassembler();

 tep_register_event_handler(tep, -1, "kvm", "kvm_exit",
       kvm_exit_handler, ((void*)0));

 tep_register_event_handler(tep, -1, "kvm", "kvm_emulate_insn",
       kvm_emulate_insn_handler, ((void*)0));

 tep_register_event_handler(tep, -1, "kvm", "kvm_nested_vmexit",
       kvm_nested_vmexit_handler, ((void*)0));

 tep_register_event_handler(tep, -1, "kvm", "kvm_nested_vmexit_inject",
       kvm_nested_vmexit_inject_handler, ((void*)0));

 tep_register_event_handler(tep, -1, "kvmmmu", "kvm_mmu_get_page",
       kvm_mmu_get_page_handler, ((void*)0));

 tep_register_event_handler(tep, -1, "kvmmmu", "kvm_mmu_sync_page",
       kvm_mmu_print_role, ((void*)0));

 tep_register_event_handler(tep, -1,
       "kvmmmu", "kvm_mmu_unsync_page",
       kvm_mmu_print_role, ((void*)0));

 tep_register_event_handler(tep, -1, "kvmmmu", "kvm_mmu_zap_page",
       kvm_mmu_print_role, ((void*)0));

 tep_register_event_handler(tep, -1, "kvmmmu",
   "kvm_mmu_prepare_zap_page", kvm_mmu_print_role,
   ((void*)0));

 tep_register_print_function(tep,
        process_is_writable_pte,
        TEP_FUNC_ARG_INT,
        "is_writable_pte",
        TEP_FUNC_ARG_LONG,
        TEP_FUNC_ARG_VOID);
 return 0;
}
