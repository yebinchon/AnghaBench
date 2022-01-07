
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int dummy; } ;
struct hist_entry {int dummy; } ;
struct data__file {int idx; } ;
typedef int int64_t ;


 int COMPUTE_DELTA_ABS ;
 struct data__file* fmt_to_data_file (struct perf_hpp_fmt*) ;
 int hist_entry__cmp_compute (struct hist_entry*,struct hist_entry*,int ,int ) ;

__attribute__((used)) static int64_t
hist_entry__cmp_delta_abs(struct perf_hpp_fmt *fmt,
        struct hist_entry *left, struct hist_entry *right)
{
 struct data__file *d = fmt_to_data_file(fmt);

 return hist_entry__cmp_compute(right, left, COMPUTE_DELTA_ABS, d->idx);
}
