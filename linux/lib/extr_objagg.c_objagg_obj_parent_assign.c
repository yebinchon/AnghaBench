
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objagg_obj {int refcount; struct objagg_obj* parent; void* delta_priv; int obj; } ;
struct objagg {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {void* (* delta_create ) (int ,int ,int ) ;} ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int objagg_obj_ref_inc (struct objagg_obj*) ;
 void* stub1 (int ,int ,int ) ;
 int trace_objagg_obj_parent_assign (struct objagg*,struct objagg_obj*,struct objagg_obj*,int ) ;

__attribute__((used)) static int objagg_obj_parent_assign(struct objagg *objagg,
        struct objagg_obj *objagg_obj,
        struct objagg_obj *parent,
        bool take_parent_ref)
{
 void *delta_priv;

 delta_priv = objagg->ops->delta_create(objagg->priv, parent->obj,
            objagg_obj->obj);
 if (IS_ERR(delta_priv))
  return PTR_ERR(delta_priv);




 objagg_obj->parent = parent;
 objagg_obj->delta_priv = delta_priv;
 if (take_parent_ref)
  objagg_obj_ref_inc(objagg_obj->parent);
 trace_objagg_obj_parent_assign(objagg, objagg_obj,
           parent,
           parent->refcount);
 return 0;
}
