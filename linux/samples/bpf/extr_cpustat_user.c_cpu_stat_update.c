
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* cstate; unsigned long* pstate; } ;


 int MAX_CPU ;
 int MAX_CSTATE_ENTRIES ;
 int MAX_PSTATE_ENTRIES ;
 int bpf_map_lookup_elem (int,unsigned long*,unsigned long*) ;
 TYPE_1__* stat_data ;

__attribute__((used)) static void cpu_stat_update(int cstate_fd, int pstate_fd)
{
 unsigned long key, value;
 int c, i;

 for (c = 0; c < MAX_CPU; c++) {
  for (i = 0; i < MAX_CSTATE_ENTRIES; i++) {
   key = c * MAX_CSTATE_ENTRIES + i;
   bpf_map_lookup_elem(cstate_fd, &key, &value);
   stat_data[c].cstate[i] = value;
  }

  for (i = 0; i < MAX_PSTATE_ENTRIES; i++) {
   key = c * MAX_PSTATE_ENTRIES + i;
   bpf_map_lookup_elem(pstate_fd, &key, &value);
   stat_data[c].pstate[i] = value;
  }
 }
}
