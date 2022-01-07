
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pstore_type_id { ____Placeholder_pstore_type_id } pstore_type_id ;


 int PSTORE_TYPE_MAX ;
 int * pstore_type_names ;
 int strcmp (int ,char const*) ;

enum pstore_type_id pstore_name_to_type(const char *name)
{
 int i;

 for (i = 0; i < PSTORE_TYPE_MAX; i++) {
  if (!strcmp(pstore_type_names[i], name))
   return i;
 }

 return PSTORE_TYPE_MAX;
}
