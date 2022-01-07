
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event {int dummy; } ;
typedef enum tep_event_sort_type { ____Placeholder_tep_event_sort_type } tep_event_sort_type ;





 int events_id_cmp (void const*,void const*) ;
 int events_name_cmp (void const*,void const*) ;
 int events_system_cmp (void const*,void const*) ;
 int qsort (struct tep_event**,int,int,int (*) (void const*,void const*)) ;

__attribute__((used)) static void list_events_sort(struct tep_event **events, int nr_events,
        enum tep_event_sort_type sort_type)
{
 int (*sort)(const void *a, const void *b);

 switch (sort_type) {
 case 130:
  sort = events_id_cmp;
  break;
 case 129:
  sort = events_name_cmp;
  break;
 case 128:
  sort = events_system_cmp;
  break;
 default:
  sort = ((void*)0);
 }

 if (sort)
  qsort(events, nr_events, sizeof(*events), sort);
}
