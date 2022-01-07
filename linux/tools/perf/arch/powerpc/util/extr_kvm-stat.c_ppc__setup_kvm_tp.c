
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {int dummy; } ;
struct evlist {int dummy; } ;


 int ENOMEM ;
 struct evlist* evlist__new () ;
 int ppc__setup_book3s_hv (struct perf_kvm_stat*,struct evlist*) ;

__attribute__((used)) static int ppc__setup_kvm_tp(struct perf_kvm_stat *kvm)
{
 struct evlist *evlist = evlist__new();

 if (evlist == ((void*)0))
  return -ENOMEM;


 return ppc__setup_book3s_hv(kvm, evlist);
}
