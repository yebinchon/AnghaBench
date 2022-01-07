
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct action_fifo {scalar_t__ head; scalar_t__ tail; } ;



__attribute__((used)) static bool action_fifo_is_empty(const struct action_fifo *fifo)
{
 return (fifo->head == fifo->tail);
}
