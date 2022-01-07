
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_filter {struct event_filter* filter_string; } ;


 int free_prog (struct event_filter*) ;
 int kfree (struct event_filter*) ;

__attribute__((used)) static void __free_filter(struct event_filter *filter)
{
 if (!filter)
  return;

 free_prog(filter);
 kfree(filter->filter_string);
 kfree(filter);
}
