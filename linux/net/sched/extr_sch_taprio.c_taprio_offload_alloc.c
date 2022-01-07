
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_taprio_sched_entry {int dummy; } ;
struct tc_taprio_qopt_offload {int dummy; } ;
struct __tc_taprio_qopt_offload {struct tc_taprio_qopt_offload offload; int users; } ;


 int GFP_KERNEL ;
 struct __tc_taprio_qopt_offload* kzalloc (size_t,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct tc_taprio_qopt_offload *taprio_offload_alloc(int num_entries)
{
 size_t size = sizeof(struct tc_taprio_sched_entry) * num_entries +
        sizeof(struct __tc_taprio_qopt_offload);
 struct __tc_taprio_qopt_offload *__offload;

 __offload = kzalloc(size, GFP_KERNEL);
 if (!__offload)
  return ((void*)0);

 refcount_set(&__offload->users, 1);

 return &__offload->offload;
}
