
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* map_type_name ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int map_type_from_str(const char *type)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(map_type_name); i++)

  if (map_type_name[i] && !strcmp(map_type_name[i], type))
   return i;
 return -1;
}
