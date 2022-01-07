
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gcond ;
typedef int const* const_gimple ;



__attribute__((used)) static inline const gcond *as_a_const_gcond(const_gimple stmt)
{
 return stmt;
}
