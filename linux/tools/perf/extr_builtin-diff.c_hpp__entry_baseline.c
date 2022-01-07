
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ field_sep; } ;


 double baseline_percent (struct hist_entry*) ;
 int scnprintf (char*,size_t,char const*,double) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int hpp__entry_baseline(struct hist_entry *he, char *buf, size_t size)
{
 double percent = baseline_percent(he);
 const char *fmt = symbol_conf.field_sep ? "%.2f" : "%6.2f%%";
 int ret = 0;

 if (!he->dummy)
  ret = scnprintf(buf, size, fmt, percent);

 return ret;
}
