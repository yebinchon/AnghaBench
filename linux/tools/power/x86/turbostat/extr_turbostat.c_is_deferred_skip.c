
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deferred_skip_index ;
 int * deferred_skip_names ;
 int strcmp (char*,int ) ;

int is_deferred_skip(char *name)
{
 int i;

 for (i = 0; i < deferred_skip_index; ++i)
  if (!strcmp(name, deferred_skip_names[i]))
   return 1;
 return 0;
}
