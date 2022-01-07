
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int mem_info; } ;
typedef int out ;


 int perf_mem__snp_scnprintf (char*,int,int ) ;
 int repsep_snprintf (char*,size_t,char*,unsigned int,char*) ;

__attribute__((used)) static int hist_entry__snoop_snprintf(struct hist_entry *he, char *bf,
        size_t size, unsigned int width)
{
 char out[64];

 perf_mem__snp_scnprintf(out, sizeof(out), he->mem_info);
 return repsep_snprintf(bf, size, "%-*s", width, out);
}
