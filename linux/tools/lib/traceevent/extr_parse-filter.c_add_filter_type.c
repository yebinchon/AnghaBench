
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_filter_type {int event_id; int * filter; int event; } ;
struct tep_event_filter {int filters; int tep; struct tep_filter_type* event_filters; } ;


 struct tep_filter_type* find_filter_type (struct tep_event_filter*,int) ;
 int memmove (struct tep_filter_type*,struct tep_filter_type*,int) ;
 struct tep_filter_type* realloc (struct tep_filter_type*,int) ;
 int tep_find_event (int ,int) ;

__attribute__((used)) static struct tep_filter_type *
add_filter_type(struct tep_event_filter *filter, int id)
{
 struct tep_filter_type *filter_type;
 int i;

 filter_type = find_filter_type(filter, id);
 if (filter_type)
  return filter_type;

 filter_type = realloc(filter->event_filters,
         sizeof(*filter->event_filters) *
         (filter->filters + 1));
 if (!filter_type)
  return ((void*)0);

 filter->event_filters = filter_type;

 for (i = 0; i < filter->filters; i++) {
  if (filter->event_filters[i].event_id > id)
   break;
 }

 if (i < filter->filters)
  memmove(&filter->event_filters[i+1],
   &filter->event_filters[i],
   sizeof(*filter->event_filters) *
   (filter->filters - i));

 filter_type = &filter->event_filters[i];
 filter_type->event_id = id;
 filter_type->event = tep_find_event(filter->tep, id);
 filter_type->filter = ((void*)0);

 filter->filters++;

 return filter_type;
}
