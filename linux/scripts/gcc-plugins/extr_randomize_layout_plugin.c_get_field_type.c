
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const_tree ;


 int TREE_TYPE (int ) ;
 int strip_array_types (int ) ;

__attribute__((used)) static const_tree get_field_type(const_tree field)
{
 return strip_array_types(TREE_TYPE(field));
}
