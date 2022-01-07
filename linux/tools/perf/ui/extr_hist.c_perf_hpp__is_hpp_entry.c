
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {scalar_t__ header; } ;


 scalar_t__ hpp__header_fn ;

__attribute__((used)) static bool perf_hpp__is_hpp_entry(struct perf_hpp_fmt *a)
{
 return a->header == hpp__header_fn;
}
