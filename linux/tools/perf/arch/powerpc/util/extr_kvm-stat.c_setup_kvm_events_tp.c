
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {int dummy; } ;


 int ppc__setup_kvm_tp (struct perf_kvm_stat*) ;

int setup_kvm_events_tp(struct perf_kvm_stat *kvm)
{
 return ppc__setup_kvm_tp(kvm);
}
