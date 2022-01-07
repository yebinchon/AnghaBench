
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 int * implicit_built_in_decls ;

__attribute__((used)) static inline tree builtin_decl_implicit(enum built_in_function fncode)
{
 return implicit_built_in_decls[fncode];
}
