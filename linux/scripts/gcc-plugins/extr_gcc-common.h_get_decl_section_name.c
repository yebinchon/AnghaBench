
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const_tree ;


 scalar_t__ DECL_SECTION_NAME (int ) ;
 scalar_t__ NULL_TREE ;
 char const* TREE_STRING_POINTER (scalar_t__) ;

__attribute__((used)) static inline const char *get_decl_section_name(const_tree decl)
{
 if (DECL_SECTION_NAME(decl) == NULL_TREE)
  return ((void*)0);

 return TREE_STRING_POINTER(DECL_SECTION_NAME(decl));
}
