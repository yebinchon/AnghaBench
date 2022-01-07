
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_info {int dummy; } ;


 scalar_t__ perf_mem__lck_scnprintf (char*,size_t,struct mem_info*) ;
 scalar_t__ perf_mem__lvl_scnprintf (char*,size_t,struct mem_info*) ;
 scalar_t__ perf_mem__snp_scnprintf (char*,size_t,struct mem_info*) ;
 scalar_t__ perf_mem__tlb_scnprintf (char*,size_t,struct mem_info*) ;
 scalar_t__ scnprintf (char*,size_t,char*) ;

int perf_script__meminfo_scnprintf(char *out, size_t sz, struct mem_info *mem_info)
{
 int i = 0;

 i += perf_mem__lvl_scnprintf(out, sz, mem_info);
 i += scnprintf(out + i, sz - i, "|SNP ");
 i += perf_mem__snp_scnprintf(out + i, sz - i, mem_info);
 i += scnprintf(out + i, sz - i, "|TLB ");
 i += perf_mem__tlb_scnprintf(out + i, sz - i, mem_info);
 i += scnprintf(out + i, sz - i, "|LCK ");
 i += perf_mem__lck_scnprintf(out + i, sz - i, mem_info);

 return i;
}
