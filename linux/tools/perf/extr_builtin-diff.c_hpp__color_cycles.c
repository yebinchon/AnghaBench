
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int dummy; } ;
struct perf_hpp {int dummy; } ;
struct hist_entry {int dummy; } ;


 int COMPUTE_CYCLES ;
 int __hpp__color_compare (struct perf_hpp_fmt*,struct perf_hpp*,struct hist_entry*,int ) ;

__attribute__((used)) static int hpp__color_cycles(struct perf_hpp_fmt *fmt,
        struct perf_hpp *hpp, struct hist_entry *he)
{
 return __hpp__color_compare(fmt, hpp, he, COMPUTE_CYCLES);
}
