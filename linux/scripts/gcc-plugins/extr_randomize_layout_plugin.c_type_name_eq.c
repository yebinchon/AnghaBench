
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gimple ;
typedef scalar_t__ const_tree ;


 int CHAR_TYPE_SIZE ;
 int INFORM (int ,char*,scalar_t__) ;

 scalar_t__ NULL_TREE ;


 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 char* TYPE_NAME_POINTER (scalar_t__) ;
 int TYPE_PRECISION (scalar_t__) ;
 int VOID_TYPE ;
 int debug_tree (scalar_t__) ;
 int gimple_location (int ) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool type_name_eq(gimple stmt, const_tree type_tree, const char *wanted_name)
{
 const char *type_name;

 if (type_tree == NULL_TREE)
  return 0;

 switch (TREE_CODE(type_tree)) {
 case 128:
  type_name = TYPE_NAME_POINTER(type_tree);
  break;
 case 130:
  if (TYPE_PRECISION(type_tree) == CHAR_TYPE_SIZE)
   type_name = "char";
  else {
   INFORM(gimple_location(stmt), "found non-char INTEGER_TYPE cast comparison: %qT\n", type_tree);
   debug_tree(type_tree);
   return 0;
  }
  break;
 case 129:
  if (TREE_CODE(TREE_TYPE(type_tree)) == VOID_TYPE) {
   type_name = "void *";
   break;
  } else {
   INFORM(gimple_location(stmt), "found non-void POINTER_TYPE cast comparison %qT\n", type_tree);
   debug_tree(type_tree);
   return 0;
  }
 default:
  INFORM(gimple_location(stmt), "unhandled cast comparison: %qT\n", type_tree);
  debug_tree(type_tree);
  return 0;
 }

 return strcmp(type_name, wanted_name) == 0;
}
