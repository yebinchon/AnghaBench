
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cpu_topology {size_t core_sib; int die_sib; size_t thread_sib; int * thread_siblings; int * die_siblings; int * core_siblings; } ;


 int free (struct cpu_topology*) ;
 int zfree (int *) ;

void cpu_topology__delete(struct cpu_topology *tp)
{
 u32 i;

 if (!tp)
  return;

 for (i = 0 ; i < tp->core_sib; i++)
  zfree(&tp->core_siblings[i]);

 if (tp->die_sib) {
  for (i = 0 ; i < tp->die_sib; i++)
   zfree(&tp->die_siblings[i]);
 }

 for (i = 0 ; i < tp->thread_sib; i++)
  zfree(&tp->thread_siblings[i]);

 free(tp);
}
