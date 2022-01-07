
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tracing_map_elt {int* var_set; int * vars; } ;


 int atomic64_set (int *,int ) ;

void tracing_map_set_var(struct tracing_map_elt *elt, unsigned int i, u64 n)
{
 atomic64_set(&elt->vars[i], n);
 elt->var_set[i] = 1;
}
