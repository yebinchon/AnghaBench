
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int const_gimple ;


 int TREE_STRING_POINTER (int ) ;
 int TREE_VALUE (int ) ;
 int gimple_asm_clobber_op (int ,unsigned int) ;
 unsigned int gimple_asm_nclobbers (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static inline bool gimple_asm_clobbers_memory_p(const_gimple stmt)
{
 unsigned i;

 for (i = 0; i < gimple_asm_nclobbers(stmt); i++) {
  tree op = gimple_asm_clobber_op(stmt, i);

  if (!strcmp(TREE_STRING_POINTER(TREE_VALUE(op)), "memory"))
   return 1;
 }

 return 0;
}
