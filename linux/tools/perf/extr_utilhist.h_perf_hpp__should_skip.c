
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {scalar_t__ elide; } ;
struct hists {int dummy; } ;


 int perf_hpp__defined_dynamic_entry (struct perf_hpp_fmt*,struct hists*) ;
 scalar_t__ perf_hpp__is_dynamic_entry (struct perf_hpp_fmt*) ;

__attribute__((used)) static inline bool perf_hpp__should_skip(struct perf_hpp_fmt *format,
      struct hists *hists)
{
 if (format->elide)
  return 1;

 if (perf_hpp__is_dynamic_entry(format) &&
     !perf_hpp__defined_dynamic_entry(format, hists))
  return 1;

 return 0;
}
