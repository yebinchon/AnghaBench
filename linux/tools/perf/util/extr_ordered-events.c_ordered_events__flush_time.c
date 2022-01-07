
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ordered_events {int dummy; } ;


 int OE_FLUSH__TIME ;
 int __ordered_events__flush (struct ordered_events*,int ,int ) ;

int ordered_events__flush_time(struct ordered_events *oe, u64 timestamp)
{
 return __ordered_events__flush(oe, OE_FLUSH__TIME, timestamp);
}
