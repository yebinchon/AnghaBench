
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_counts {int values; int loaded; } ;


 int xyarray__reset (int ) ;

__attribute__((used)) static void perf_counts__reset(struct perf_counts *counts)
{
 xyarray__reset(counts->loaded);
 xyarray__reset(counts->values);
}
