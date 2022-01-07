
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int mem_lock; } ;
struct mem_info {TYPE_1__ data_src; } ;


 int PERF_MEM_LOCK_LOCKED ;
 int PERF_MEM_LOCK_NA ;
 int scnprintf (char*,size_t,char*) ;

int perf_mem__lck_scnprintf(char *out, size_t sz, struct mem_info *mem_info)
{
 u64 mask = PERF_MEM_LOCK_NA;
 int l;

 if (mem_info)
  mask = mem_info->data_src.mem_lock;

 if (mask & PERF_MEM_LOCK_NA)
  l = scnprintf(out, sz, "N/A");
 else if (mask & PERF_MEM_LOCK_LOCKED)
  l = scnprintf(out, sz, "Yes");
 else
  l = scnprintf(out, sz, "No");

 return l;
}
