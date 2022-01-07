
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {scalar_t__ idx; } ;


 int perf_hpp__is_hpp_entry (struct perf_hpp_fmt*) ;

__attribute__((used)) static bool hpp__equal(struct perf_hpp_fmt *a, struct perf_hpp_fmt *b)
{
 if (!perf_hpp__is_hpp_entry(a) || !perf_hpp__is_hpp_entry(b))
  return 0;

 return a->idx == b->idx;
}
