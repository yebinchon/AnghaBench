
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {struct tep_format_field* next; } ;


 int tep_free_format_field (struct tep_format_field*) ;

__attribute__((used)) static void free_format_fields(struct tep_format_field *field)
{
 struct tep_format_field *next;

 while (field) {
  next = field->next;
  tep_free_format_field(field);
  field = next;
 }
}
