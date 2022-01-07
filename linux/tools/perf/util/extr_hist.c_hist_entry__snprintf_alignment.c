
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_hpp_fmt {int (* width ) (struct perf_hpp_fmt*,struct perf_hpp*,TYPE_2__*) ;int list; } ;
struct perf_hpp {int size; int buf; } ;
struct hist_entry {TYPE_2__* hists; } ;
struct TYPE_4__ {TYPE_1__* hpp_list; } ;
struct TYPE_3__ {int fields; } ;


 int advance_hpp (struct perf_hpp*,int) ;
 int list_is_last (int *,int *) ;
 int scnprintf (int ,int ,char*,int const,char*) ;
 int stub1 (struct perf_hpp_fmt*,struct perf_hpp*,TYPE_2__*) ;

int hist_entry__snprintf_alignment(struct hist_entry *he, struct perf_hpp *hpp,
       struct perf_hpp_fmt *fmt, int printed)
{
 if (!list_is_last(&fmt->list, &he->hists->hpp_list->fields)) {
  const int width = fmt->width(fmt, hpp, he->hists);
  if (printed < width) {
   advance_hpp(hpp, printed);
   printed = scnprintf(hpp->buf, hpp->size, "%-*s", width - printed, " ");
  }
 }

 return printed;
}
