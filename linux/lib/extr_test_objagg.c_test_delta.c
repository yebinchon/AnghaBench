
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct world {int dummy; } ;
struct objagg {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (struct objagg*) ;
 int PTR_ERR (struct objagg*) ;
 int * action_items ;
 int delta_ops ;
 struct objagg* objagg_create (int *,int *,struct world*) ;
 int objagg_destroy (struct objagg*) ;
 int test_delta_action_item (struct world*,struct objagg*,int *,int) ;

__attribute__((used)) static int test_delta(void)
{
 struct world world = {};
 struct objagg *objagg;
 int i;
 int err;

 objagg = objagg_create(&delta_ops, ((void*)0), &world);
 if (IS_ERR(objagg))
  return PTR_ERR(objagg);

 for (i = 0; i < ARRAY_SIZE(action_items); i++) {
  err = test_delta_action_item(&world, objagg,
          &action_items[i], 0);
  if (err)
   goto err_do_action_item;
 }

 objagg_destroy(objagg);
 return 0;

err_do_action_item:
 for (i--; i >= 0; i--)
  test_delta_action_item(&world, objagg, &action_items[i], 1);

 objagg_destroy(objagg);
 return err;
}
