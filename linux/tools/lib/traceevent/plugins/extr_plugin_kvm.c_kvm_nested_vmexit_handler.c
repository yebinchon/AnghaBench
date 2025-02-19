
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_event {int dummy; } ;


 int kvm_nested_vmexit_inject_handler (struct trace_seq*,struct tep_record*,struct tep_event*,void*) ;
 int tep_print_num_field (struct trace_seq*,char*,struct tep_event*,char*,struct tep_record*,int) ;

__attribute__((used)) static int kvm_nested_vmexit_handler(struct trace_seq *s, struct tep_record *record,
         struct tep_event *event, void *context)
{
 tep_print_num_field(s, "rip %llx ", event, "rip", record, 1);

 return kvm_nested_vmexit_inject_handler(s, record, event, context);
}
