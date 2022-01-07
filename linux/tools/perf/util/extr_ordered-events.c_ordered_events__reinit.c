
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ordered_events {int data; int deliver; } ;
typedef int ordered_events__deliver_t ;


 int memset (struct ordered_events*,char,int) ;
 int ordered_events__free (struct ordered_events*) ;
 int ordered_events__init (struct ordered_events*,int ,int ) ;

void ordered_events__reinit(struct ordered_events *oe)
{
 ordered_events__deliver_t old_deliver = oe->deliver;

 ordered_events__free(oe);
 memset(oe, '\0', sizeof(*oe));
 ordered_events__init(oe, old_deliver, oe->data);
}
