
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {struct tep_event** events; } ;
struct tep_format_field {int offset; int size; } ;
struct tep_event {int dummy; } ;


 int do_warning (char*) ;
 struct tep_format_field* tep_find_common_field (struct tep_event*,char const*) ;

__attribute__((used)) static int get_common_info(struct tep_handle *tep,
      const char *type, int *offset, int *size)
{
 struct tep_event *event;
 struct tep_format_field *field;





 if (!tep->events) {
  do_warning("no event_list!");
  return -1;
 }

 event = tep->events[0];
 field = tep_find_common_field(event, type);
 if (!field)
  return -1;

 *offset = field->offset;
 *size = field->size;

 return 0;
}
