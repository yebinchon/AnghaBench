
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tracing_map_elt {struct tracing_map_elt* key; struct tracing_map_elt* var_set; struct tracing_map_elt* vars; struct tracing_map_elt* fields; TYPE_2__* map; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* elt_free ) (struct tracing_map_elt*) ;} ;


 int kfree (struct tracing_map_elt*) ;
 int stub1 (struct tracing_map_elt*) ;

__attribute__((used)) static void tracing_map_elt_free(struct tracing_map_elt *elt)
{
 if (!elt)
  return;

 if (elt->map->ops && elt->map->ops->elt_free)
  elt->map->ops->elt_free(elt);
 kfree(elt->fields);
 kfree(elt->vars);
 kfree(elt->var_set);
 kfree(elt->key);
 kfree(elt);
}
