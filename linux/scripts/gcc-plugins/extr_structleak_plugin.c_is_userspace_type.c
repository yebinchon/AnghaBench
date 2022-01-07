
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int DECL_ATTRIBUTES (scalar_t__) ;
 int RECORD_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 int UNION_TYPE ;
 scalar_t__ get_field_type (scalar_t__) ;
 scalar_t__ lookup_attribute (char*,int ) ;

__attribute__((used)) static bool is_userspace_type(tree type)
{
 tree field;

 for (field = TYPE_FIELDS(type); field; field = TREE_CHAIN(field)) {
  tree fieldtype = get_field_type(field);
  enum tree_code code = TREE_CODE(fieldtype);

  if (code == RECORD_TYPE || code == UNION_TYPE)
   if (is_userspace_type(fieldtype))
    return 1;

  if (lookup_attribute("user", DECL_ATTRIBUTES(field)))
   return 1;
 }
 return 0;
}
