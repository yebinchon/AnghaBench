
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {int type; } ;


 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static int field_is_long(struct tep_format_field *field)
{

 if (strstr(field->type, "long"))
  return 1;

 return 0;
}
