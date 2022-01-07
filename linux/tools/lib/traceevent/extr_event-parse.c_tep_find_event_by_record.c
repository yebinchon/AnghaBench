
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_record {scalar_t__ size; int data; } ;
struct tep_handle {int dummy; } ;
struct tep_event {int dummy; } ;


 int do_warning (char*,scalar_t__) ;
 struct tep_event* tep_find_event (struct tep_handle*,int) ;
 int trace_parse_common_type (struct tep_handle*,int ) ;

struct tep_event *
tep_find_event_by_record(struct tep_handle *tep, struct tep_record *record)
{
 int type;

 if (record->size < 0) {
  do_warning("ug! negative record size %d", record->size);
  return ((void*)0);
 }

 type = trace_parse_common_type(tep, record->data);

 return tep_find_event(tep, type);
}
