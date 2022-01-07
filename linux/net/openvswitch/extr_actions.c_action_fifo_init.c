
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct action_fifo {scalar_t__ tail; scalar_t__ head; } ;



__attribute__((used)) static void action_fifo_init(struct action_fifo *fifo)
{
 fifo->head = 0;
 fifo->tail = 0;
}
