
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp_fmt {int dummy; } ;
struct perf_hpp {int size; int buf; } ;
struct hist_entry {TYPE_1__* thread; int hists; } ;
struct TYPE_2__ {int pid_; } ;


 int c2c_width (struct perf_hpp_fmt*,struct perf_hpp*,int ) ;
 int scnprintf (int ,int ,char*,int,int ) ;

__attribute__((used)) static int
pid_entry(struct perf_hpp_fmt *fmt, struct perf_hpp *hpp,
   struct hist_entry *he)
{
 int width = c2c_width(fmt, hpp, he->hists);

 return scnprintf(hpp->buf, hpp->size, "%*d", width, he->thread->pid_);
}
