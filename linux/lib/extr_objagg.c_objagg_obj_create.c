
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objagg_obj {int list; int ht_node; int obj; } ;
struct objagg {int obj_count; int obj_list; int ht_params; int obj_ht; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ obj_size; } ;


 int ENOMEM ;
 struct objagg_obj* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct objagg_obj*) ;
 struct objagg_obj* kzalloc (scalar_t__,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,void*,scalar_t__) ;
 int objagg_obj_fini (struct objagg*,struct objagg_obj*) ;
 int objagg_obj_init (struct objagg*,struct objagg_obj*) ;
 int objagg_obj_ref_inc (struct objagg_obj*) ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int trace_objagg_obj_create (struct objagg*,struct objagg_obj*) ;

__attribute__((used)) static struct objagg_obj *objagg_obj_create(struct objagg *objagg, void *obj)
{
 struct objagg_obj *objagg_obj;
 int err;

 objagg_obj = kzalloc(sizeof(*objagg_obj) + objagg->ops->obj_size,
        GFP_KERNEL);
 if (!objagg_obj)
  return ERR_PTR(-ENOMEM);
 objagg_obj_ref_inc(objagg_obj);
 memcpy(objagg_obj->obj, obj, objagg->ops->obj_size);

 err = objagg_obj_init(objagg, objagg_obj);
 if (err)
  goto err_obj_init;

 err = rhashtable_insert_fast(&objagg->obj_ht, &objagg_obj->ht_node,
         objagg->ht_params);
 if (err)
  goto err_ht_insert;
 list_add(&objagg_obj->list, &objagg->obj_list);
 objagg->obj_count++;
 trace_objagg_obj_create(objagg, objagg_obj);

 return objagg_obj;

err_ht_insert:
 objagg_obj_fini(objagg, objagg_obj);
err_obj_init:
 kfree(objagg_obj);
 return ERR_PTR(err);
}
