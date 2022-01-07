
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_filter_type {TYPE_1__* filter; int event_id; } ;
struct tep_event_filter {int filters; struct tep_filter_type* event_filters; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 char* arg_to_str (struct tep_event_filter*,TYPE_1__*) ;
 struct tep_filter_type* find_filter_type (struct tep_event_filter*,int ) ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;

int tep_filter_compare(struct tep_event_filter *filter1, struct tep_event_filter *filter2)
{
 struct tep_filter_type *filter_type1;
 struct tep_filter_type *filter_type2;
 char *str1, *str2;
 int result;
 int i;


 if (filter1->filters != filter2->filters)
  return 0;
 if (!filter1->filters && !filter2->filters)
  return 1;





 for (i = 0; i < filter1->filters; i++) {
  filter_type1 = &filter1->event_filters[i];
  filter_type2 = find_filter_type(filter2, filter_type1->event_id);
  if (!filter_type2)
   break;
  if (filter_type1->filter->type != filter_type2->filter->type)
   break;

  str1 = arg_to_str(filter1, filter_type1->filter);
  str2 = arg_to_str(filter2, filter_type2->filter);
  if (str1 && str2)
   result = strcmp(str1, str2) != 0;
  else

   result = 1;

  free(str1);
  free(str2);
  if (result)
   break;
 }

 if (i < filter1->filters)
  return 0;
 return 1;
}
