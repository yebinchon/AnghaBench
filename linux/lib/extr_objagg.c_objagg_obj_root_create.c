
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objagg_obj {int root_priv; int root_id; int obj; } ;
struct objagg_hints_node {int dummy; } ;
struct objagg {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* root_create ) (int ,int ,int ) ;} ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int objagg_obj_root_id_alloc (struct objagg*,struct objagg_obj*,struct objagg_hints_node*) ;
 int objagg_obj_root_id_free (struct objagg*,struct objagg_obj*) ;
 int stub1 (int ,int ,int ) ;
 int trace_objagg_obj_root_create (struct objagg*,struct objagg_obj*) ;

__attribute__((used)) static int objagg_obj_root_create(struct objagg *objagg,
      struct objagg_obj *objagg_obj,
      struct objagg_hints_node *hnode)
{
 int err;

 err = objagg_obj_root_id_alloc(objagg, objagg_obj, hnode);
 if (err)
  return err;
 objagg_obj->root_priv = objagg->ops->root_create(objagg->priv,
        objagg_obj->obj,
        objagg_obj->root_id);
 if (IS_ERR(objagg_obj->root_priv)) {
  err = PTR_ERR(objagg_obj->root_priv);
  goto err_root_create;
 }
 trace_objagg_obj_root_create(objagg, objagg_obj);
 return 0;

err_root_create:
 objagg_obj_root_id_free(objagg, objagg_obj);
 return err;
}
