
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objagg_obj {int root_priv; } ;
struct objagg {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* root_destroy ) (int ,int ) ;} ;


 int objagg_obj_root_id_free (struct objagg*,struct objagg_obj*) ;
 int stub1 (int ,int ) ;
 int trace_objagg_obj_root_destroy (struct objagg*,struct objagg_obj*) ;

__attribute__((used)) static void objagg_obj_root_destroy(struct objagg *objagg,
        struct objagg_obj *objagg_obj)
{
 trace_objagg_obj_root_destroy(objagg, objagg_obj);
 objagg->ops->root_destroy(objagg->priv, objagg_obj->root_priv);
 objagg_obj_root_id_free(objagg, objagg_obj);
}
