
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct objagg_obj {TYPE_2__* parent; int delta_priv; } ;
struct objagg {int priv; TYPE_1__* ops; } ;
struct TYPE_5__ {int refcount; } ;
struct TYPE_4__ {int (* delta_destroy ) (int ,int ) ;} ;


 int __objagg_obj_put (struct objagg*,TYPE_2__*) ;
 int stub1 (int ,int ) ;
 int trace_objagg_obj_parent_unassign (struct objagg*,struct objagg_obj*,TYPE_2__*,int ) ;

__attribute__((used)) static void objagg_obj_parent_unassign(struct objagg *objagg,
           struct objagg_obj *objagg_obj)
{
 trace_objagg_obj_parent_unassign(objagg, objagg_obj,
      objagg_obj->parent,
      objagg_obj->parent->refcount);
 objagg->ops->delta_destroy(objagg->priv, objagg_obj->delta_priv);
 __objagg_obj_put(objagg, objagg_obj->parent);
}
