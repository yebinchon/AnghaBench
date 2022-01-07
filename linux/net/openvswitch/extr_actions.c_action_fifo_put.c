
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deferred_action {int dummy; } ;
struct action_fifo {int head; struct deferred_action* fifo; } ;


 int DEFERRED_ACTION_FIFO_SIZE ;

__attribute__((used)) static struct deferred_action *action_fifo_put(struct action_fifo *fifo)
{
 if (fifo->head >= DEFERRED_ACTION_FIFO_SIZE - 1)
  return ((void*)0);

 return &fifo->fifo[fifo->head++];
}
