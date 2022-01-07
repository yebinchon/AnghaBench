
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ordered_events {int nr_events; int cache; } ;
struct ordered_event {int * event; int list; } ;


 int free_dup_event (struct ordered_events*,int *) ;
 int list_move (int *,int *) ;

void ordered_events__delete(struct ordered_events *oe, struct ordered_event *event)
{
 list_move(&event->list, &oe->cache);
 oe->nr_events--;
 free_dup_event(oe, event->event);
 event->event = ((void*)0);
}
