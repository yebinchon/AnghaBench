
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_filter_type {int filter; } ;
struct tep_event_filter {int filters; } ;


 char* arg_to_str (struct tep_event_filter*,int ) ;
 struct tep_filter_type* find_filter_type (struct tep_event_filter*,int) ;

char *
tep_filter_make_string(struct tep_event_filter *filter, int event_id)
{
 struct tep_filter_type *filter_type;

 if (!filter->filters)
  return ((void*)0);

 filter_type = find_filter_type(filter, event_id);

 if (!filter_type)
  return ((void*)0);

 return arg_to_str(filter, filter_type->filter);
}
