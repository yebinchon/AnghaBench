
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int dummy; } ;
struct perf_hpp {int dummy; } ;
struct hist_entry {int dummy; } ;


 int percent_color (struct perf_hpp_fmt*,struct perf_hpp*,struct hist_entry*,int ) ;
 int percent_hitm ;

__attribute__((used)) static int
percent_hitm_color(struct perf_hpp_fmt *fmt, struct perf_hpp *hpp,
     struct hist_entry *he)
{
 return percent_color(fmt, hpp, he, percent_hitm);
}
