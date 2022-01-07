
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tracing_map_elt {void* var_set; void* vars; void* fields; void* key; struct tracing_map* map; } ;
struct tracing_map {int key_size; TYPE_1__* ops; int n_vars; int n_fields; } ;
struct TYPE_2__ {int (* elt_alloc ) (struct tracing_map_elt*) ;} ;


 int ENOMEM ;
 struct tracing_map_elt* ERR_PTR (int) ;
 int GFP_KERNEL ;
 void* kcalloc (int ,int,int ) ;
 void* kzalloc (int,int ) ;
 int stub1 (struct tracing_map_elt*) ;
 int tracing_map_elt_free (struct tracing_map_elt*) ;
 int tracing_map_elt_init_fields (struct tracing_map_elt*) ;

__attribute__((used)) static struct tracing_map_elt *tracing_map_elt_alloc(struct tracing_map *map)
{
 struct tracing_map_elt *elt;
 int err = 0;

 elt = kzalloc(sizeof(*elt), GFP_KERNEL);
 if (!elt)
  return ERR_PTR(-ENOMEM);

 elt->map = map;

 elt->key = kzalloc(map->key_size, GFP_KERNEL);
 if (!elt->key) {
  err = -ENOMEM;
  goto free;
 }

 elt->fields = kcalloc(map->n_fields, sizeof(*elt->fields), GFP_KERNEL);
 if (!elt->fields) {
  err = -ENOMEM;
  goto free;
 }

 elt->vars = kcalloc(map->n_vars, sizeof(*elt->vars), GFP_KERNEL);
 if (!elt->vars) {
  err = -ENOMEM;
  goto free;
 }

 elt->var_set = kcalloc(map->n_vars, sizeof(*elt->var_set), GFP_KERNEL);
 if (!elt->var_set) {
  err = -ENOMEM;
  goto free;
 }

 tracing_map_elt_init_fields(elt);

 if (map->ops && map->ops->elt_alloc) {
  err = map->ops->elt_alloc(elt);
  if (err)
   goto free;
 }
 return elt;
 free:
 tracing_map_elt_free(elt);

 return ERR_PTR(err);
}
