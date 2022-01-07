
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp_fmt {int len; scalar_t__ user_len; } ;
struct perf_hpp {int dummy; } ;
struct hist_entry {int dummy; } ;
typedef int hpp_snprint_fn ;
typedef int hpp_field_fn ;
struct TYPE_2__ {scalar_t__ field_sep; } ;


 int __hpp__fmt (struct perf_hpp*,struct hist_entry*,int ,char const*,int,int ,int) ;
 TYPE_1__ symbol_conf ;

int hpp__fmt(struct perf_hpp_fmt *fmt, struct perf_hpp *hpp,
      struct hist_entry *he, hpp_field_fn get_field,
      const char *fmtstr, hpp_snprint_fn print_fn, bool fmt_percent)
{
 int len = fmt->user_len ?: fmt->len;

 if (symbol_conf.field_sep) {
  return __hpp__fmt(hpp, he, get_field, fmtstr, 1,
      print_fn, fmt_percent);
 }

 if (fmt_percent)
  len -= 2;
 else
  len -= 1;

 return __hpp__fmt(hpp, he, get_field, fmtstr, len, print_fn, fmt_percent);
}
