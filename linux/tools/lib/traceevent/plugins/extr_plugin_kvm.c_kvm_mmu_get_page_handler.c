
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_event {int dummy; } ;


 int kvm_mmu_print_role (struct trace_seq*,struct tep_record*,struct tep_event*,void*) ;
 scalar_t__ tep_get_field_val (struct trace_seq*,struct tep_event*,char*,struct tep_record*,unsigned long long*,int) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static int kvm_mmu_get_page_handler(struct trace_seq *s,
        struct tep_record *record,
        struct tep_event *event, void *context)
{
 unsigned long long val;

 if (tep_get_field_val(s, event, "created", record, &val, 1) < 0)
  return -1;

 trace_seq_printf(s, "%s ", val ? "new" : "existing");

 if (tep_get_field_val(s, event, "gfn", record, &val, 1) < 0)
  return -1;

 trace_seq_printf(s, "sp gfn %llx ", val);
 return kvm_mmu_print_role(s, record, event, context);
}
