
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mf_result { ____Placeholder_mf_result } mf_result ;
typedef enum mf_action_page_type { ____Placeholder_mf_action_page_type } mf_action_page_type ;


 int * action_name ;
 int * action_page_types ;
 int pr_err (char*,unsigned long,int ,int ) ;
 int trace_memory_failure_event (unsigned long,int,int) ;

__attribute__((used)) static void action_result(unsigned long pfn, enum mf_action_page_type type,
     enum mf_result result)
{
 trace_memory_failure_event(pfn, type, result);

 pr_err("Memory failure: %#lx: recovery action for %s: %s\n",
  pfn, action_page_types[type], action_name[result]);
}
