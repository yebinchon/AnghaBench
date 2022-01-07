
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct world {unsigned int delta_count; unsigned int root_count; } ;
struct action_item {unsigned int key_id; int expect_delta; int expect_root; int action; } ;


 int ACTION_GET ;
 int ACTION_PUT ;
 int EINVAL ;






 int WARN_ON (int) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int check_expect(struct world *world,
   const struct action_item *action_item,
   unsigned int orig_delta_count,
   unsigned int orig_root_count)
{
 unsigned int key_id = action_item->key_id;

 switch (action_item->expect_delta) {
 case 131:
  if (orig_delta_count != world->delta_count) {
   pr_err("Key %u: Delta count changed while expected to remain the same.\n",
          key_id);
   return -EINVAL;
  }
  break;
 case 132:
  if (WARN_ON(action_item->action == ACTION_PUT))
   return -EINVAL;
  if (orig_delta_count + 1 != world->delta_count) {
   pr_err("Key %u: Delta count was not incremented.\n",
          key_id);
   return -EINVAL;
  }
  break;
 case 133:
  if (WARN_ON(action_item->action == ACTION_GET))
   return -EINVAL;
  if (orig_delta_count - 1 != world->delta_count) {
   pr_err("Key %u: Delta count was not decremented.\n",
          key_id);
   return -EINVAL;
  }
  break;
 }

 switch (action_item->expect_root) {
 case 128:
  if (orig_root_count != world->root_count) {
   pr_err("Key %u: Root count changed while expected to remain the same.\n",
          key_id);
   return -EINVAL;
  }
  break;
 case 129:
  if (WARN_ON(action_item->action == ACTION_PUT))
   return -EINVAL;
  if (orig_root_count + 1 != world->root_count) {
   pr_err("Key %u: Root count was not incremented.\n",
          key_id);
   return -EINVAL;
  }
  break;
 case 130:
  if (WARN_ON(action_item->action == ACTION_GET))
   return -EINVAL;
  if (orig_root_count - 1 != world->root_count) {
   pr_err("Key %u: Root count was not decremented.\n",
          key_id);
   return -EINVAL;
  }
 }

 return 0;
}
