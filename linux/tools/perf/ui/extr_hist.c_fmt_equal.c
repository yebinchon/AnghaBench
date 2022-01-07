
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {scalar_t__ (* equal ) (struct perf_hpp_fmt*,struct perf_hpp_fmt*) ;} ;


 scalar_t__ stub1 (struct perf_hpp_fmt*,struct perf_hpp_fmt*) ;

__attribute__((used)) static bool fmt_equal(struct perf_hpp_fmt *a, struct perf_hpp_fmt *b)
{
 return a->equal && a->equal(a, b);
}
