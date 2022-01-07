
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct world {unsigned int delta_count; unsigned int root_count; } ;
struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;
struct action_item {unsigned int key_id; int action; int expect_stats; } ;
typedef enum action { ____Placeholder_action } action ;




 int IS_ERR (struct objagg_obj*) ;
 int PTR_ERR (struct objagg_obj*) ;
 int check_expect (struct world*,struct action_item const*,unsigned int,unsigned int) ;
 int check_expect_stats (struct objagg*,int *,char const**) ;
 int pr_err (char*,unsigned int,char const*) ;
 struct objagg_obj* world_obj_get (struct world*,struct objagg*,unsigned int) ;
 int world_obj_put (struct world*,struct objagg*,unsigned int) ;

__attribute__((used)) static int test_delta_action_item(struct world *world,
      struct objagg *objagg,
      const struct action_item *action_item,
      bool inverse)
{
 unsigned int orig_delta_count = world->delta_count;
 unsigned int orig_root_count = world->root_count;
 unsigned int key_id = action_item->key_id;
 enum action action = action_item->action;
 struct objagg_obj *objagg_obj;
 const char *errmsg;
 int err;

 if (inverse)
  action = action == 129 ? 128 : 129;

 switch (action) {
 case 129:
  objagg_obj = world_obj_get(world, objagg, key_id);
  if (IS_ERR(objagg_obj))
   return PTR_ERR(objagg_obj);
  break;
 case 128:
  world_obj_put(world, objagg, key_id);
  break;
 }

 if (inverse)
  return 0;
 err = check_expect(world, action_item,
      orig_delta_count, orig_root_count);
 if (err)
  goto errout;

 err = check_expect_stats(objagg, &action_item->expect_stats, &errmsg);
 if (err) {
  pr_err("Key %u: Stats: %s\n", action_item->key_id, errmsg);
  goto errout;
 }

 return 0;

errout:



 test_delta_action_item(world, objagg, action_item, 1);
 return err;
}
