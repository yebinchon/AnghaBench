
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;


 scalar_t__ FUNCTION_DECL ;
 int IDENTIFIER_POINTER (char*) ;
 char* NULL_TREE ;
 scalar_t__ PARM_DECL ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_TYPE (char*) ;
 int TYPE_ATTRIBUTES (char*) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_P (char*) ;
 scalar_t__ VAR_DECL ;
 int error (char*,char*,char*) ;
 int gcc_assert (int) ;
 scalar_t__ lookup_attribute (int ,int ) ;

__attribute__((used)) static tree handle_randomize_layout_attr(tree *node, tree name, tree args, int flags, bool *no_add_attrs)
{
 tree type;

 *no_add_attrs = 1;
 if (TREE_CODE(*node) == FUNCTION_DECL) {
  error("%qE attribute does not apply to functions (%qF)", name, *node);
  return NULL_TREE;
 }

 if (TREE_CODE(*node) == PARM_DECL) {
  error("%qE attribute does not apply to function parameters (%qD)", name, *node);
  return NULL_TREE;
 }

 if (TREE_CODE(*node) == VAR_DECL) {
  error("%qE attribute does not apply to variables (%qD)", name, *node);
  return NULL_TREE;
 }

 if (TYPE_P(*node)) {
  type = *node;
 } else {
  gcc_assert(TREE_CODE(*node) == TYPE_DECL);
  type = TREE_TYPE(*node);
 }

 if (TREE_CODE(type) != RECORD_TYPE) {
  error("%qE attribute used on %qT applies to struct types only", name, type);
  return NULL_TREE;
 }

 if (lookup_attribute(IDENTIFIER_POINTER(name), TYPE_ATTRIBUTES(type))) {
  error("%qE attribute is already applied to the type %qT", name, type);
  return NULL_TREE;
 }

 *no_add_attrs = 0;

 return NULL_TREE;
}
