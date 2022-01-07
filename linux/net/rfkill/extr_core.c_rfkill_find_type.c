
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;


 int ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 int NUM_RFKILL_TYPES ;
 int RFKILL_TYPE_ALL ;
 int * rfkill_types ;
 int strcmp (char const*,int ) ;

enum rfkill_type rfkill_find_type(const char *name)
{
 int i;

 BUILD_BUG_ON(ARRAY_SIZE(rfkill_types) != NUM_RFKILL_TYPES);

 if (!name)
  return RFKILL_TYPE_ALL;

 for (i = 1; i < NUM_RFKILL_TYPES; i++)
  if (!strcmp(name, rfkill_types[i]))
   return i;
 return RFKILL_TYPE_ALL;
}
