
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int gimple ;


 scalar_t__ gimple_get_lhs (int ) ;
 int is_gimple_reg (scalar_t__) ;

__attribute__((used)) static inline bool gimple_store_p(gimple gs)
{
 tree lhs = gimple_get_lhs(gs);

 return lhs && !is_gimple_reg(lhs);
}
