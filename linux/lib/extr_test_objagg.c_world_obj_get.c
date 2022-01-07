
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct world {int * key_refs; struct objagg_obj** objagg_objs; } ;
struct tokey {unsigned int id; } ;
struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;


 int EINVAL ;
 struct objagg_obj* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct objagg_obj*) ;
 size_t key_id_index (unsigned int) ;
 struct objagg_obj* objagg_obj_get (struct objagg*,struct tokey*) ;
 int objagg_obj_put (struct objagg*,struct objagg_obj*) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static struct objagg_obj *world_obj_get(struct world *world,
     struct objagg *objagg,
     unsigned int key_id)
{
 struct objagg_obj *objagg_obj;
 struct tokey key;
 int err;

 key.id = key_id;
 objagg_obj = objagg_obj_get(objagg, &key);
 if (IS_ERR(objagg_obj)) {
  pr_err("Key %u: Failed to get object.\n", key_id);
  return objagg_obj;
 }
 if (!world->key_refs[key_id_index(key_id)]) {
  world->objagg_objs[key_id_index(key_id)] = objagg_obj;
 } else if (world->objagg_objs[key_id_index(key_id)] != objagg_obj) {
  pr_err("Key %u: God another object for the same key.\n",
         key_id);
  err = -EINVAL;
  goto err_key_id_check;
 }
 world->key_refs[key_id_index(key_id)]++;
 return objagg_obj;

err_key_id_check:
 objagg_obj_put(objagg, objagg_obj);
 return ERR_PTR(err);
}
