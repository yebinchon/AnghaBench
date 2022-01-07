
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int mem_snoop; int mem_snoopx; } ;
struct mem_info {TYPE_1__ data_src; } ;


 size_t ARRAY_SIZE (char**) ;
 int PERF_MEM_SNOOPX_FWD ;
 int PERF_MEM_SNOOP_NA ;
 scalar_t__ scnprintf (char*,size_t,char*) ;
 char** snoop_access ;
 int strcat (char*,char*) ;

int perf_mem__snp_scnprintf(char *out, size_t sz, struct mem_info *mem_info)
{
 size_t i, l = 0;
 u64 m = PERF_MEM_SNOOP_NA;

 sz -= 1;
 out[0] = '\0';

 if (mem_info)
  m = mem_info->data_src.mem_snoop;

 for (i = 0; m && i < ARRAY_SIZE(snoop_access); i++, m >>= 1) {
  if (!(m & 0x1))
   continue;
  if (l) {
   strcat(out, " or ");
   l += 4;
  }
  l += scnprintf(out + l, sz - l, snoop_access[i]);
 }
 if (mem_info &&
      (mem_info->data_src.mem_snoopx & PERF_MEM_SNOOPX_FWD)) {
  if (l) {
   strcat(out, " or ");
   l += 4;
  }
  l += scnprintf(out + l, sz - l, "Fwd");
 }

 if (*out == '\0')
  l += scnprintf(out, sz - l, "N/A");

 return l;
}
