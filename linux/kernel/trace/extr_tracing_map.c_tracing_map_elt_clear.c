
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tracing_map_elt {int* var_set; TYPE_3__* map; int * vars; TYPE_1__* fields; } ;
struct TYPE_6__ {unsigned int n_fields; unsigned int n_vars; TYPE_2__* ops; } ;
struct TYPE_5__ {int (* elt_clear ) (struct tracing_map_elt*) ;} ;
struct TYPE_4__ {scalar_t__ cmp_fn; int sum; } ;


 int atomic64_set (int *,int ) ;
 int stub1 (struct tracing_map_elt*) ;
 scalar_t__ tracing_map_cmp_atomic64 ;

__attribute__((used)) static void tracing_map_elt_clear(struct tracing_map_elt *elt)
{
 unsigned i;

 for (i = 0; i < elt->map->n_fields; i++)
  if (elt->fields[i].cmp_fn == tracing_map_cmp_atomic64)
   atomic64_set(&elt->fields[i].sum, 0);

 for (i = 0; i < elt->map->n_vars; i++) {
  atomic64_set(&elt->vars[i], 0);
  elt->var_set[i] = 0;
 }

 if (elt->map->ops && elt->map->ops->elt_clear)
  elt->map->ops->elt_clear(elt);
}
