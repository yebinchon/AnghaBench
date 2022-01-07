
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gasm ;
typedef int const* const_gimple ;



__attribute__((used)) static inline const gasm *as_a_const_gasm(const_gimple stmt)
{
 return stmt;
}
