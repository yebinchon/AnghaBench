
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tracing_map_elt {TYPE_1__* fields; } ;
struct TYPE_2__ {int sum; } ;


 int atomic64_add (int ,int *) ;

void tracing_map_update_sum(struct tracing_map_elt *elt, unsigned int i, u64 n)
{
 atomic64_add(n, &elt->fields[i].sum);
}
