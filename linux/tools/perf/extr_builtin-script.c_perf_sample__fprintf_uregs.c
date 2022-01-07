
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int user_regs; } ;
struct perf_event_attr {int sample_regs_user; } ;
typedef int FILE ;


 int perf_sample__fprintf_regs (int *,int ,int *) ;

__attribute__((used)) static int perf_sample__fprintf_uregs(struct perf_sample *sample,
          struct perf_event_attr *attr, FILE *fp)
{
 return perf_sample__fprintf_regs(&sample->user_regs,
      attr->sample_regs_user, fp);
}
