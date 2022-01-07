
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_counts {int values; int loaded; } ;


 int free (struct perf_counts*) ;
 int xyarray__delete (int ) ;

void perf_counts__delete(struct perf_counts *counts)
{
 if (counts) {
  xyarray__delete(counts->loaded);
  xyarray__delete(counts->values);
  free(counts);
 }
}
