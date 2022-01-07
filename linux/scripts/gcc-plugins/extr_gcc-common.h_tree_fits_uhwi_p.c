
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const_tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_INT_CST_HIGH (scalar_t__) ;

__attribute__((used)) static inline bool tree_fits_uhwi_p(const_tree t)
{
 if (t == NULL_TREE || TREE_CODE(t) != INTEGER_CST)
  return 0;

 return TREE_INT_CST_HIGH(t) == 0;
}
