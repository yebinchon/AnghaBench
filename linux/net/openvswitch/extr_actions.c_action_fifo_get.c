
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deferred_action {int dummy; } ;
struct action_fifo {int tail; struct deferred_action* fifo; } ;


 scalar_t__ action_fifo_is_empty (struct action_fifo*) ;

__attribute__((used)) static struct deferred_action *action_fifo_get(struct action_fifo *fifo)
{
 if (action_fifo_is_empty(fifo))
  return ((void*)0);

 return &fifo->fifo[fifo->tail++];
}
