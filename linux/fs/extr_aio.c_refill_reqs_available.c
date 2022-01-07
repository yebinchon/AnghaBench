
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {unsigned int nr_events; unsigned int completed_events; } ;


 int put_reqs_available (struct kioctx*,unsigned int) ;

__attribute__((used)) static void refill_reqs_available(struct kioctx *ctx, unsigned head,
                                  unsigned tail)
{
 unsigned events_in_ring, completed;


 head %= ctx->nr_events;
 if (head <= tail)
  events_in_ring = tail - head;
 else
  events_in_ring = ctx->nr_events - (head - tail);

 completed = ctx->completed_events;
 if (events_in_ring < completed)
  completed -= events_in_ring;
 else
  completed = 0;

 if (!completed)
  return;

 ctx->completed_events -= completed;
 put_reqs_available(ctx, completed);
}
