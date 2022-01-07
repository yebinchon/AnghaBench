
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {void* sort; void* color; void* collapse; void* cmp; int entry; int width; int header; } ;
struct diff_hpp_fmt {int idx; struct perf_hpp_fmt fmt; } ;
struct data__file {struct diff_hpp_fmt* fmt; } ;
 void* hist_entry__cmp_baseline ;
 void* hist_entry__cmp_delta ;
 void* hist_entry__cmp_delta_abs ;
 void* hist_entry__cmp_nop ;
 void* hist_entry__cmp_ratio ;
 void* hist_entry__cmp_wdiff ;
 void* hpp__color_baseline ;
 void* hpp__color_cycles ;
 void* hpp__color_delta ;
 void* hpp__color_ratio ;
 void* hpp__color_wdiff ;
 int hpp__entry_global ;
 int hpp__header ;
 int hpp__width ;
 int init_header (struct data__file*,struct diff_hpp_fmt*) ;
 int perf_hpp__column_register (struct perf_hpp_fmt*) ;
 int perf_hpp__register_sort_field (struct perf_hpp_fmt*) ;

__attribute__((used)) static void data__hpp_register(struct data__file *d, int idx)
{
 struct diff_hpp_fmt *dfmt = &d->fmt[idx];
 struct perf_hpp_fmt *fmt = &dfmt->fmt;

 dfmt->idx = idx;

 fmt->header = hpp__header;
 fmt->width = hpp__width;
 fmt->entry = hpp__entry_global;
 fmt->cmp = hist_entry__cmp_nop;
 fmt->collapse = hist_entry__cmp_nop;


 switch (idx) {
 case 133:
  fmt->color = hpp__color_baseline;
  fmt->sort = hist_entry__cmp_baseline;
  break;
 case 131:
  fmt->color = hpp__color_delta;
  fmt->sort = hist_entry__cmp_delta;
  break;
 case 129:
  fmt->color = hpp__color_ratio;
  fmt->sort = hist_entry__cmp_ratio;
  break;
 case 128:
  fmt->color = hpp__color_wdiff;
  fmt->sort = hist_entry__cmp_wdiff;
  break;
 case 130:
  fmt->color = hpp__color_delta;
  fmt->sort = hist_entry__cmp_delta_abs;
  break;
 case 132:
  fmt->color = hpp__color_cycles;
  fmt->sort = hist_entry__cmp_nop;
  break;
 default:
  fmt->sort = hist_entry__cmp_nop;
  break;
 }

 init_header(d, dfmt);
 perf_hpp__column_register(fmt);
 perf_hpp__register_sort_field(fmt);
}
