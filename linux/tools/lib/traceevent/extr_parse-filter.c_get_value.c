
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_record {unsigned long long cpu; int data; } ;
struct tep_format_field {int flags; int size; } ;
struct tep_event {int dummy; } ;


 int TEP_FIELD_IS_SIGNED ;
 struct tep_format_field comm ;
 struct tep_format_field cpu ;
 char* get_comm (struct tep_event*,struct tep_record*) ;
 int tep_read_number_field (struct tep_format_field*,int ,unsigned long long*) ;

__attribute__((used)) static unsigned long long
get_value(struct tep_event *event,
   struct tep_format_field *field, struct tep_record *record)
{
 unsigned long long val;


 if (field == &comm) {
  const char *name;

  name = get_comm(event, record);
  return (unsigned long)name;
 }


 if (field == &cpu)
  return record->cpu;

 tep_read_number_field(field, record->data, &val);

 if (!(field->flags & TEP_FIELD_IS_SIGNED))
  return val;

 switch (field->size) {
 case 1:
  return (char)val;
 case 2:
  return (short)val;
 case 4:
  return (int)val;
 case 8:
  return (long long)val;
 }
 return val;
}
