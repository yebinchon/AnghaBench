
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int varpool_finalize_decl (int ) ;

__attribute__((used)) static inline void varpool_add_new_variable(tree decl)
{
 varpool_finalize_decl(decl);
}
