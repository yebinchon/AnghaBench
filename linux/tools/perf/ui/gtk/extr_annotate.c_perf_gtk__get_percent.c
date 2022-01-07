
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct sym_hist {double nr_samples; TYPE_1__* addr; } ;
struct TYPE_5__ {size_t offset; } ;
struct disasm_line {TYPE_2__ al; } ;
typedef size_t s64 ;
struct TYPE_6__ {int event_group; } ;
struct TYPE_4__ {double nr_samples; } ;


 struct sym_hist* annotation__histogram (int ,int) ;
 char* perf_gtk__get_percent_color (double) ;
 scalar_t__ scnprintf (char*,size_t,char*,...) ;
 int strcpy (char*,char*) ;
 int symbol__annotation (struct symbol*) ;
 TYPE_3__ symbol_conf ;

__attribute__((used)) static int perf_gtk__get_percent(char *buf, size_t size, struct symbol *sym,
     struct disasm_line *dl, int evidx)
{
 struct sym_hist *symhist;
 double percent = 0.0;
 const char *markup;
 int ret = 0;

 strcpy(buf, "");

 if (dl->al.offset == (s64) -1)
  return 0;

 symhist = annotation__histogram(symbol__annotation(sym), evidx);
 if (!symbol_conf.event_group && !symhist->addr[dl->al.offset].nr_samples)
  return 0;

 percent = 100.0 * symhist->addr[dl->al.offset].nr_samples / symhist->nr_samples;

 markup = perf_gtk__get_percent_color(percent);
 if (markup)
  ret += scnprintf(buf, size, "%s", markup);
 ret += scnprintf(buf + ret, size - ret, "%6.2f%%", percent);
 if (markup)
  ret += scnprintf(buf + ret, size - ret, "</span>");

 return ret;
}
