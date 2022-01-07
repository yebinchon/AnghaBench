
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_filter_type {int dummy; } ;
struct tep_event_filter {int filters; } ;


 struct tep_filter_type* find_filter_type (struct tep_event_filter*,int) ;

int tep_event_filtered(struct tep_event_filter *filter, int event_id)
{
 struct tep_filter_type *filter_type;

 if (!filter->filters)
  return 0;

 filter_type = find_filter_type(filter, event_id);

 return filter_type ? 1 : 0;
}
