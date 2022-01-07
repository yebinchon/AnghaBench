
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_field {scalar_t__ size; scalar_t__ is_signed; int type; int name; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool compatible_field(struct ftrace_event_field *field,
        struct ftrace_event_field *test_field)
{
 if (field == test_field)
  return 1;
 if (field == ((void*)0) || test_field == ((void*)0))
  return 0;
 if (strcmp(field->name, test_field->name) != 0)
  return 0;
 if (strcmp(field->type, test_field->type) != 0)
  return 0;
 if (field->size != test_field->size)
  return 0;
 if (field->is_signed != test_field->is_signed)
  return 0;

 return 1;
}
