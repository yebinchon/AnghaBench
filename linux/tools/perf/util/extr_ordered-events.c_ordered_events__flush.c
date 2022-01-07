
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ordered_events {int dummy; } ;
typedef enum oe_flush { ____Placeholder_oe_flush } oe_flush ;


 int __ordered_events__flush (struct ordered_events*,int,int ) ;

int ordered_events__flush(struct ordered_events *oe, enum oe_flush how)
{
 return __ordered_events__flush(oe, how, 0);
}
