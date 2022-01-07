
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct branch_type_stat {int dummy; } ;
typedef int str ;
typedef int FILE ;


 int counts_str_build (char*,int,int ,int ,int ,int ,int ,int ,int ,struct branch_type_stat*) ;
 int fprintf (int *,char*,char*) ;
 int scnprintf (char*,int,char*,char*) ;

__attribute__((used)) static int callchain_counts_printf(FILE *fp, char *bf, int bfsize,
       u64 branch_count, u64 predicted_count,
       u64 abort_count, u64 cycles_count,
       u64 iter_count, u64 iter_cycles,
       u64 from_count,
       struct branch_type_stat *brtype_stat)
{
 char str[256];

 counts_str_build(str, sizeof(str), branch_count,
    predicted_count, abort_count, cycles_count,
    iter_count, iter_cycles, from_count, brtype_stat);

 if (fp)
  return fprintf(fp, "%s", str);

 return scnprintf(bf, bfsize, "%s", str);
}
