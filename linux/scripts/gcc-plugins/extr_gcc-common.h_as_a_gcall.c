
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gimple ;
typedef int gcall ;



__attribute__((used)) static inline gcall *as_a_gcall(gimple stmt)
{
 return stmt;
}
