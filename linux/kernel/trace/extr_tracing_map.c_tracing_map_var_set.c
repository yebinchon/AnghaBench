
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_elt {int* var_set; } ;



bool tracing_map_var_set(struct tracing_map_elt *elt, unsigned int i)
{
 return elt->var_set[i];
}
