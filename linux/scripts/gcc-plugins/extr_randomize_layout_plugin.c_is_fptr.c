
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const_tree ;


 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;

__attribute__((used)) static bool is_fptr(const_tree fieldtype)
{
 if (TREE_CODE(fieldtype) != POINTER_TYPE)
  return 0;

 return TREE_CODE(TREE_TYPE(fieldtype)) == FUNCTION_TYPE;
}
