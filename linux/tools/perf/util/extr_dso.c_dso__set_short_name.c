
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int short_name_allocated; char const* short_name; int short_name_len; } ;


 int free (char*) ;
 int strlen (char const*) ;

void dso__set_short_name(struct dso *dso, const char *name, bool name_allocated)
{
 if (name == ((void*)0))
  return;

 if (dso->short_name_allocated)
  free((char *)dso->short_name);

 dso->short_name = name;
 dso->short_name_len = strlen(name);
 dso->short_name_allocated = name_allocated;
}
