
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objagg_obj {int obj; } ;
struct objagg_hints_node {TYPE_1__* parent; } ;
struct objagg {int hints; } ;
struct TYPE_2__ {int obj; } ;


 scalar_t__ IS_ERR (struct objagg_obj*) ;
 int PTR_ERR (struct objagg_obj*) ;
 struct objagg_obj* __objagg_obj_get (struct objagg*,int ) ;
 struct objagg_hints_node* objagg_hints_lookup (int ,int ) ;
 int objagg_obj_parent_assign (struct objagg*,struct objagg_obj*,struct objagg_obj*,int) ;
 int objagg_obj_put (struct objagg*,struct objagg_obj*) ;
 int objagg_obj_root_create (struct objagg*,struct objagg_obj*,struct objagg_hints_node*) ;

__attribute__((used)) static int objagg_obj_init_with_hints(struct objagg *objagg,
          struct objagg_obj *objagg_obj,
          bool *hint_found)
{
 struct objagg_hints_node *hnode;
 struct objagg_obj *parent;
 int err;

 hnode = objagg_hints_lookup(objagg->hints, objagg_obj->obj);
 if (!hnode) {
  *hint_found = 0;
  return 0;
 }
 *hint_found = 1;

 if (!hnode->parent)
  return objagg_obj_root_create(objagg, objagg_obj, hnode);

 parent = __objagg_obj_get(objagg, hnode->parent->obj);
 if (IS_ERR(parent))
  return PTR_ERR(parent);

 err = objagg_obj_parent_assign(objagg, objagg_obj, parent, 0);
 if (err) {
  *hint_found = 0;
  err = 0;
  goto err_parent_assign;
 }

 return 0;

err_parent_assign:
 objagg_obj_put(objagg, parent);
 return err;
}
