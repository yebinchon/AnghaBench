
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* asprintf_expr_inout_ints (char const*,int,size_t,int*) ;

__attribute__((used)) static inline char *asprintf_expr_in_ints(const char *var, size_t nints, int *ints)
{
 return asprintf_expr_inout_ints(var, 1, nints, ints);
}
