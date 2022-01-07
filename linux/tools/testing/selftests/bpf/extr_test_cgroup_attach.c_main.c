
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int (*) ()) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int printf (char*) ;
 int stub1 () ;
 int test_autodetach ;
 int test_foo_bar ;
 int test_multiprog ;

int main(void)
{
 int (*tests[])(void) = {
  test_foo_bar,
  test_multiprog,
  test_autodetach,
 };
 int errors = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(tests); i++)
  if (tests[i]())
   errors++;

 if (errors)
  printf("test_cgroup_attach:FAIL\n");
 else
  printf("test_cgroup_attach:PASS\n");

 return errors ? EXIT_FAILURE : EXIT_SUCCESS;
}
