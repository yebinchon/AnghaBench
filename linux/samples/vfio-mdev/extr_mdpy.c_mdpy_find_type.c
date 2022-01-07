
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdpy_type {int name; } ;
struct kobject {int name; } ;


 int ARRAY_SIZE (struct mdpy_type const*) ;
 struct mdpy_type const* mdpy_types ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static const struct mdpy_type *mdpy_find_type(struct kobject *kobj)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mdpy_types); i++)
  if (strcmp(mdpy_types[i].name, kobj->name) == 0)
   return mdpy_types + i;
 return ((void*)0);
}
