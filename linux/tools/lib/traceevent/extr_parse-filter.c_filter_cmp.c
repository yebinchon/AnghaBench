
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_filter_type {scalar_t__ event_id; } ;



__attribute__((used)) static int filter_cmp(const void *a, const void *b)
{
 const struct tep_filter_type *ea = a;
 const struct tep_filter_type *eb = b;

 if (ea->event_id < eb->event_id)
  return -1;

 if (ea->event_id > eb->event_id)
  return 1;

 return 0;
}
