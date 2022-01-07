
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int perf_sample__fprintf_spacing (int,int,int *) ;

__attribute__((used)) static int perf_sample__fprintf_pt_spacing(int len, FILE *fp)
{
 return perf_sample__fprintf_spacing(len, 34, fp);
}
