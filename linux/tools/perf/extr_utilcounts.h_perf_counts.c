
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_counts_values {int dummy; } ;
struct perf_counts {int values; } ;


 struct perf_counts_values* xyarray__entry (int ,int,int) ;

__attribute__((used)) static inline struct perf_counts_values*
perf_counts(struct perf_counts *counts, int cpu, int thread)
{
 return xyarray__entry(counts->values, cpu, thread);
}
