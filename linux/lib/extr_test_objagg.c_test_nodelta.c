
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct world {int dummy; } ;
struct objagg {int dummy; } ;


 scalar_t__ IS_ERR (struct objagg*) ;
 int NUM_KEYS ;
 int PTR_ERR (struct objagg*) ;
 int check_stats_nodelta (struct objagg*) ;
 int check_stats_zero (struct objagg*) ;
 int nodelta_ops ;
 struct objagg* objagg_create (int *,int *,struct world*) ;
 int objagg_destroy (struct objagg*) ;
 int test_nodelta_obj_get (struct world*,struct objagg*,int,int) ;
 int test_nodelta_obj_put (struct world*,struct objagg*,int,int) ;
 int world_obj_put (struct world*,struct objagg*,int) ;

__attribute__((used)) static int test_nodelta(void)
{
 struct world world = {};
 struct objagg *objagg;
 int i;
 int err;

 objagg = objagg_create(&nodelta_ops, ((void*)0), &world);
 if (IS_ERR(objagg))
  return PTR_ERR(objagg);

 err = check_stats_zero(objagg);
 if (err)
  goto err_stats_first_zero;


 for (i = 0; i < NUM_KEYS; i++) {
  err = test_nodelta_obj_get(&world, objagg, i, 1);
  if (err)
   goto err_obj_first_get;
 }




 for (i = 0; i < NUM_KEYS; i++) {
  err = test_nodelta_obj_get(&world, objagg, i, 0);
  if (err)
   goto err_obj_second_get;
 }

 err = check_stats_nodelta(objagg);
 if (err)
  goto err_stats_nodelta;

 for (i = NUM_KEYS - 1; i >= 0; i--) {
  err = test_nodelta_obj_put(&world, objagg, i, 0);
  if (err)
   goto err_obj_first_put;
 }
 for (i = NUM_KEYS - 1; i >= 0; i--) {
  err = test_nodelta_obj_put(&world, objagg, i, 1);
  if (err)
   goto err_obj_second_put;
 }

 err = check_stats_zero(objagg);
 if (err)
  goto err_stats_second_zero;

 objagg_destroy(objagg);
 return 0;

err_stats_nodelta:
err_obj_first_put:
err_obj_second_get:
 for (i--; i >= 0; i--)
  world_obj_put(&world, objagg, i);

 i = NUM_KEYS;
err_obj_first_get:
err_obj_second_put:
 for (i--; i >= 0; i--)
  world_obj_put(&world, objagg, i);
err_stats_first_zero:
err_stats_second_zero:
 objagg_destroy(objagg);
 return err;
}
