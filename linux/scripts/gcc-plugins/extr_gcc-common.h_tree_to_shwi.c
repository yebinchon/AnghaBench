
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const_tree ;
typedef int HOST_WIDE_INT ;


 int TREE_INT_CST_LOW (int ) ;
 int gcc_assert (int ) ;
 int tree_fits_shwi_p (int ) ;

__attribute__((used)) static inline HOST_WIDE_INT tree_to_shwi(const_tree t)
{
 gcc_assert(tree_fits_shwi_p(t));
 return TREE_INT_CST_LOW(t);
}
