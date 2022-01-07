
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_parman {int run_budget; int parman; } ;
struct parman_ops {int dummy; } ;


 int ENOMEM ;
 struct test_parman* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int TEST_PARMAN_BASE_COUNT ;
 int TEST_PARMAN_RUN_BUDGET ;
 int kfree (struct test_parman*) ;
 struct test_parman* kzalloc (int,int ) ;
 int parman_create (struct parman_ops const*,struct test_parman*) ;
 int test_parman_items_init (struct test_parman*) ;
 int test_parman_prios_init (struct test_parman*) ;
 int test_parman_resize (struct test_parman*,int ) ;
 int test_parman_rnd_init (struct test_parman*) ;

__attribute__((used)) static struct test_parman *test_parman_create(const struct parman_ops *ops)
{
 struct test_parman *test_parman;
 int err;

 test_parman = kzalloc(sizeof(*test_parman), GFP_KERNEL);
 if (!test_parman)
  return ERR_PTR(-ENOMEM);
 err = test_parman_resize(test_parman, TEST_PARMAN_BASE_COUNT);
 if (err)
  goto err_resize;
 test_parman->parman = parman_create(ops, test_parman);
 if (!test_parman->parman) {
  err = -ENOMEM;
  goto err_parman_create;
 }
 test_parman_rnd_init(test_parman);
 test_parman_prios_init(test_parman);
 test_parman_items_init(test_parman);
 test_parman->run_budget = TEST_PARMAN_RUN_BUDGET;
 return test_parman;

err_parman_create:
 test_parman_resize(test_parman, 0);
err_resize:
 kfree(test_parman);
 return ERR_PTR(err);
}
