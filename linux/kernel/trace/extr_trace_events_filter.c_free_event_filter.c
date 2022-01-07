
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_filter {int dummy; } ;


 int __free_filter (struct event_filter*) ;

void free_event_filter(struct event_filter *filter)
{
 __free_filter(filter);
}
