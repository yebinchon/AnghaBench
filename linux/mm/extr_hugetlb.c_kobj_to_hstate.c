
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct hstate {int dummy; } ;


 int HUGE_MAX_HSTATE ;
 int NUMA_NO_NODE ;
 struct kobject** hstate_kobjs ;
 struct hstate* hstates ;
 struct hstate* kobj_to_node_hstate (struct kobject*,int*) ;

__attribute__((used)) static struct hstate *kobj_to_hstate(struct kobject *kobj, int *nidp)
{
 int i;

 for (i = 0; i < HUGE_MAX_HSTATE; i++)
  if (hstate_kobjs[i] == kobj) {
   if (nidp)
    *nidp = NUMA_NO_NODE;
   return &hstates[i];
  }

 return kobj_to_node_hstate(kobj, nidp);
}
