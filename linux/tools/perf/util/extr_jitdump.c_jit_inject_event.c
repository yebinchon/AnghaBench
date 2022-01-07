
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
union perf_event {TYPE_1__ header; } ;
struct jit_buf_desc {int bytes_written; int output; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ perf_data__write (int ,union perf_event*,int ) ;

__attribute__((used)) static int
jit_inject_event(struct jit_buf_desc *jd, union perf_event *event)
{
 ssize_t size;

 size = perf_data__write(jd->output, event, event->header.size);
 if (size < 0)
  return -1;

 jd->bytes_written += size;
 return 0;
}
