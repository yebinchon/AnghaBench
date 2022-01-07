
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ordered_events* data; struct ordered_events* in; } ;
struct perf_top {TYPE_1__ qe; } ;
struct ordered_events {int dummy; } ;



__attribute__((used)) static struct ordered_events *rotate_queues(struct perf_top *top)
{
 struct ordered_events *in = top->qe.in;

 if (top->qe.in == &top->qe.data[1])
  top->qe.in = &top->qe.data[0];
 else
  top->qe.in = &top->qe.data[1];

 return in;
}
