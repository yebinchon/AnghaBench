
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tracing_map_elt {int * vars; } ;


 int atomic64_read (int *) ;

u64 tracing_map_read_var(struct tracing_map_elt *elt, unsigned int i)
{
 return (u64)atomic64_read(&elt->vars[i]);
}
