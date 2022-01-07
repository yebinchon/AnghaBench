
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {char* alias; char* name; } ;
struct bt_ctf_field_type {int dummy; } ;
struct bt_ctf_event_class {int dummy; } ;


 int bt_ctf_event_class_add_field (struct bt_ctf_event_class*,struct bt_ctf_field_type*,char*) ;
 struct bt_ctf_field_type* bt_ctf_event_class_get_field_by_name (struct bt_ctf_event_class*,char*) ;
 int bt_ctf_field_type_put (struct bt_ctf_field_type*) ;
 scalar_t__ bt_ctf_validate_identifier (char*) ;
 char* change_name (char*,char*,int) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int event_class_add_field(struct bt_ctf_event_class *event_class,
  struct bt_ctf_field_type *type,
  struct tep_format_field *field)
{
 struct bt_ctf_field_type *t = ((void*)0);
 char *name;
 int dup = 1;
 int ret;


 if (field->alias != field->name)
  return bt_ctf_event_class_add_field(event_class, type,
    (char *)field->alias);

 name = field->name;


 if (bt_ctf_validate_identifier(name))
  name = change_name(name, field->name, -1);

 if (!name) {
  pr_err("Failed to fix invalid identifier.");
  return -1;
 }
 while ((t = bt_ctf_event_class_get_field_by_name(event_class, name))) {
  bt_ctf_field_type_put(t);
  name = change_name(name, field->name, dup++);
  if (!name) {
   pr_err("Failed to create dup name for '%s'\n", field->name);
   return -1;
  }
 }

 ret = bt_ctf_event_class_add_field(event_class, type, name);
 if (!ret)
  field->alias = name;

 return ret;
}
