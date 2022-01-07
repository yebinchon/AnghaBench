
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gimple ;
typedef int gcond ;



__attribute__((used)) static inline gcond *as_a_gcond(gimple stmt)
{
 return stmt;
}
