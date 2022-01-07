
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_parameter_spec {scalar_t__ name; } ;
struct fs_parameter_description {struct fs_parameter_spec* specs; } ;


 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static const struct fs_parameter_spec *fs_lookup_key(
 const struct fs_parameter_description *desc,
 const char *name)
{
 const struct fs_parameter_spec *p;

 if (!desc->specs)
  return ((void*)0);

 for (p = desc->specs; p->name; p++)
  if (strcmp(p->name, name) == 0)
   return p;

 return ((void*)0);
}
