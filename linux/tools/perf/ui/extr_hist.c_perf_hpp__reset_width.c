
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int idx; int len; } ;
struct hists {int dummy; } ;


 int BUG_ON (int) ;
 int PERF_HPP__MAX_INDEX ;
 scalar_t__ perf_hpp__is_dynamic_entry (struct perf_hpp_fmt*) ;
 scalar_t__ perf_hpp__is_sort_entry (struct perf_hpp_fmt*) ;
 void perf_hpp__reset_sort_width (struct perf_hpp_fmt*,struct hists*) ;

void perf_hpp__reset_width(struct perf_hpp_fmt *fmt, struct hists *hists)
{
 if (perf_hpp__is_sort_entry(fmt))
  return perf_hpp__reset_sort_width(fmt, hists);

 if (perf_hpp__is_dynamic_entry(fmt))
  return;

 BUG_ON(fmt->idx >= PERF_HPP__MAX_INDEX);

 switch (fmt->idx) {
 case 135:
 case 131:
 case 130:
 case 134:
  fmt->len = 8;
  break;

 case 133:
 case 132:
  fmt->len = 9;
  break;

 case 128:
 case 129:
  fmt->len = 12;
  break;

 default:
  break;
 }
}
