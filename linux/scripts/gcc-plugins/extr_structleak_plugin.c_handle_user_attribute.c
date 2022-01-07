
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ FIELD_DECL ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static tree handle_user_attribute(tree *node, tree name, tree args, int flags, bool *no_add_attrs)
{
 *no_add_attrs = 1;


 if (TREE_CODE(*node) != FIELD_DECL)
  return NULL_TREE;

 *no_add_attrs = 0;
 return NULL_TREE;
}
