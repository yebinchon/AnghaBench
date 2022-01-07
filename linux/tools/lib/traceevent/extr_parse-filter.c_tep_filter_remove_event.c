
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_filter_type {int dummy; } ;
struct tep_event_filter {int filters; int * event_filters; } ;


 struct tep_filter_type* find_filter_type (struct tep_event_filter*,int) ;
 int free_filter_type (struct tep_filter_type*) ;
 int memmove (struct tep_filter_type*,struct tep_filter_type*,unsigned long) ;
 int memset (int *,int ,int) ;

int tep_filter_remove_event(struct tep_event_filter *filter,
       int event_id)
{
 struct tep_filter_type *filter_type;
 unsigned long len;

 if (!filter->filters)
  return 0;

 filter_type = find_filter_type(filter, event_id);

 if (!filter_type)
  return 0;

 free_filter_type(filter_type);


 len = (unsigned long)(filter->event_filters + filter->filters) -
  (unsigned long)(filter_type + 1);

 memmove(filter_type, filter_type + 1, len);
 filter->filters--;

 memset(&filter->event_filters[filter->filters], 0,
        sizeof(*filter_type));

 return 1;
}
