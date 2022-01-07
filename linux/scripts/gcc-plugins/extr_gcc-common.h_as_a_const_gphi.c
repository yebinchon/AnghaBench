
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gphi ;
typedef int const* const_gimple ;



__attribute__((used)) static inline const gphi *as_a_const_gphi(const_gimple stmt)
{
 return stmt;
}
