
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;
struct tep_event_filter {struct tep_handle* tep; } ;


 struct tep_event_filter* malloc (int) ;
 int memset (struct tep_event_filter*,int ,int) ;
 int tep_ref (struct tep_handle*) ;

struct tep_event_filter *tep_filter_alloc(struct tep_handle *tep)
{
 struct tep_event_filter *filter;

 filter = malloc(sizeof(*filter));
 if (filter == ((void*)0))
  return ((void*)0);

 memset(filter, 0, sizeof(*filter));
 filter->tep = tep;
 tep_ref(tep);

 return filter;
}
