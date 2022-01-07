
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct world {unsigned int root_count; } ;
struct objagg {int dummy; } ;


 int EINVAL ;
 int pr_err (char*,unsigned int) ;
 int world_obj_put (struct world*,struct objagg*,unsigned int) ;

__attribute__((used)) static int test_nodelta_obj_put(struct world *world, struct objagg *objagg,
    unsigned int key_id, bool should_destroy_root)
{
 unsigned int orig_root_count = world->root_count;

 world_obj_put(world, objagg, key_id);

 if (should_destroy_root) {
  if (world->root_count != orig_root_count - 1) {
   pr_err("Key %u: Root was not destroyed\n", key_id);
   return -EINVAL;
  }
 } else {
  if (world->root_count != orig_root_count) {
   pr_err("Key %u: Root was incorrectly destroyed\n",
          key_id);
   return -EINVAL;
  }
 }
 return 0;
}
