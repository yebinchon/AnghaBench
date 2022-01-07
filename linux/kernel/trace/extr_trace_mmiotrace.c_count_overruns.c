
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {TYPE_1__* trace_buffer; } ;
struct TYPE_2__ {int buffer; } ;


 unsigned long atomic_xchg (int *,int ) ;
 int dropped_count ;
 unsigned long prev_overruns ;
 unsigned long ring_buffer_overruns (int ) ;

__attribute__((used)) static unsigned long count_overruns(struct trace_iterator *iter)
{
 unsigned long cnt = atomic_xchg(&dropped_count, 0);
 unsigned long over = ring_buffer_overruns(iter->trace_buffer->buffer);

 if (over > prev_overruns)
  cnt += over - prev_overruns;
 prev_overruns = over;
 return cnt;
}
