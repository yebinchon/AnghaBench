
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tracing_map_elt {TYPE_2__* map; TYPE_3__* fields; } ;
struct TYPE_6__ {scalar_t__ cmp_fn; int offset; } ;
struct TYPE_5__ {unsigned int n_fields; TYPE_1__* fields; } ;
struct TYPE_4__ {scalar_t__ cmp_fn; int offset; } ;


 scalar_t__ tracing_map_cmp_atomic64 ;
 int tracing_map_elt_clear (struct tracing_map_elt*) ;

__attribute__((used)) static void tracing_map_elt_init_fields(struct tracing_map_elt *elt)
{
 unsigned int i;

 tracing_map_elt_clear(elt);

 for (i = 0; i < elt->map->n_fields; i++) {
  elt->fields[i].cmp_fn = elt->map->fields[i].cmp_fn;

  if (elt->fields[i].cmp_fn != tracing_map_cmp_atomic64)
   elt->fields[i].offset = elt->map->fields[i].offset;
 }
}
