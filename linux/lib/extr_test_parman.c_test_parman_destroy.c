
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_parman {int parman; } ;


 int kfree (struct test_parman*) ;
 int parman_destroy (int ) ;
 int test_parman_items_fini (struct test_parman*) ;
 int test_parman_prios_fini (struct test_parman*) ;
 int test_parman_resize (struct test_parman*,int ) ;

__attribute__((used)) static void test_parman_destroy(struct test_parman *test_parman)
{
 test_parman_items_fini(test_parman);
 test_parman_prios_fini(test_parman);
 parman_destroy(test_parman->parman);
 test_parman_resize(test_parman, 0);
 kfree(test_parman);
}
