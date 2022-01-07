
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {scalar_t__ alias; scalar_t__ name; struct tep_format_field* type; } ;


 int free (struct tep_format_field*) ;

void tep_free_format_field(struct tep_format_field *field)
{
 free(field->type);
 if (field->alias != field->name)
  free(field->alias);
 free(field->name);
 free(field);
}
