
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {char* exit_reasons_isa; int exit_reasons; } ;
struct evlist {int dummy; } ;


 int hv_exit_reasons ;
 int is_tracepoint_available (char const*,struct evlist*) ;
 char** kvm_events_tp ;
 char* kvm_exit_reason ;
 char** ppc_book3s_hv_kvm_tp ;

__attribute__((used)) static int ppc__setup_book3s_hv(struct perf_kvm_stat *kvm,
    struct evlist *evlist)
{
 const char **events_ptr;
 int i, nr_tp = 0, err = -1;


 for (events_ptr = ppc_book3s_hv_kvm_tp; *events_ptr; events_ptr++) {
  err = is_tracepoint_available(*events_ptr, evlist);
  if (err)
   return -1;
  nr_tp++;
 }

 for (i = 0; i < nr_tp; i++)
  kvm_events_tp[i] = ppc_book3s_hv_kvm_tp[i];

 kvm_events_tp[i] = ((void*)0);
 kvm_exit_reason = "trap";
 kvm->exit_reasons = hv_exit_reasons;
 kvm->exit_reasons_isa = "HV";

 return 0;
}
