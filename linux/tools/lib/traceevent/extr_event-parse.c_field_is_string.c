
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {int flags; int type; } ;


 int TEP_FIELD_IS_ARRAY ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static int field_is_string(struct tep_format_field *field)
{
 if ((field->flags & TEP_FIELD_IS_ARRAY) &&
     (strstr(field->type, "char") || strstr(field->type, "u8") ||
      strstr(field->type, "s8")))
  return 1;

 return 0;
}
