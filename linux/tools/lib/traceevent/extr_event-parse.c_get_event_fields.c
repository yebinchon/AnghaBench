
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {struct tep_format_field* next; } ;


 int do_warning (char*,char const*,char const*) ;
 struct tep_format_field** malloc (int) ;

__attribute__((used)) static struct tep_format_field **
get_event_fields(const char *type, const char *name,
   int count, struct tep_format_field *list)
{
 struct tep_format_field **fields;
 struct tep_format_field *field;
 int i = 0;

 fields = malloc(sizeof(*fields) * (count + 1));
 if (!fields)
  return ((void*)0);

 for (field = list; field; field = field->next) {
  fields[i++] = field;
  if (i == count + 1) {
   do_warning("event %s has more %s fields than specified",
    name, type);
   i--;
   break;
  }
 }

 if (i != count)
  do_warning("event %s has less %s fields than specified",
   name, type);

 fields[i] = ((void*)0);

 return fields;
}
