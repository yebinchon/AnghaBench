
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct world {unsigned int root_count; int next_root_buf; } ;
struct TYPE_2__ {unsigned int id; } ;
struct root {int buf; TYPE_1__ key; } ;
struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct objagg_obj*) ;
 int PTR_ERR (struct objagg_obj*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int objagg_obj_put (struct objagg*,struct objagg_obj*) ;
 struct root* objagg_obj_root_priv (struct objagg_obj*) ;
 int pr_err (char*,unsigned int) ;
 int prandom_bytes (int ,int) ;
 struct objagg_obj* world_obj_get (struct world*,struct objagg*,unsigned int) ;

__attribute__((used)) static int test_nodelta_obj_get(struct world *world, struct objagg *objagg,
    unsigned int key_id, bool should_create_root)
{
 unsigned int orig_root_count = world->root_count;
 struct objagg_obj *objagg_obj;
 const struct root *root;
 int err;

 if (should_create_root)
  prandom_bytes(world->next_root_buf,
         sizeof(world->next_root_buf));

 objagg_obj = world_obj_get(world, objagg, key_id);
 if (IS_ERR(objagg_obj)) {
  pr_err("Key %u: Failed to get object.\n", key_id);
  return PTR_ERR(objagg_obj);
 }
 if (should_create_root) {
  if (world->root_count != orig_root_count + 1) {
   pr_err("Key %u: Root was not created\n", key_id);
   err = -EINVAL;
   goto err_check_root_count;
  }
 } else {
  if (world->root_count != orig_root_count) {
   pr_err("Key %u: Root was incorrectly created\n",
          key_id);
   err = -EINVAL;
   goto err_check_root_count;
  }
 }
 root = objagg_obj_root_priv(objagg_obj);
 if (root->key.id != key_id) {
  pr_err("Key %u: Root has unexpected key id\n", key_id);
  err = -EINVAL;
  goto err_check_key_id;
 }
 if (should_create_root &&
     memcmp(world->next_root_buf, root->buf, sizeof(root->buf))) {
  pr_err("Key %u: Buffer does not match the expected content\n",
         key_id);
  err = -EINVAL;
  goto err_check_buf;
 }
 return 0;

err_check_buf:
err_check_key_id:
err_check_root_count:
 objagg_obj_put(objagg, objagg_obj);
 return err;
}
