
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ordered_events {void* data; int deliver; scalar_t__ cur_alloc_size; scalar_t__ max_alloc_size; int to_free; int cache; int events; } ;
typedef int ordered_events__deliver_t ;


 int INIT_LIST_HEAD (int *) ;

void ordered_events__init(struct ordered_events *oe, ordered_events__deliver_t deliver,
     void *data)
{
 INIT_LIST_HEAD(&oe->events);
 INIT_LIST_HEAD(&oe->cache);
 INIT_LIST_HEAD(&oe->to_free);
 oe->max_alloc_size = (u64) -1;
 oe->cur_alloc_size = 0;
 oe->deliver = deliver;
 oe->data = data;
}
