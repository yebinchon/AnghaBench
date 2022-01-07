
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbochs_type {int name; } ;
struct kobject {int name; } ;


 int ARRAY_SIZE (struct mbochs_type const*) ;
 struct mbochs_type const* mbochs_types ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static const struct mbochs_type *mbochs_find_type(struct kobject *kobj)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mbochs_types); i++)
  if (strcmp(mbochs_types[i].name, kobj->name) == 0)
   return mbochs_types + i;
 return ((void*)0);
}
