
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_l4lb (char const*) ;

void test_l4lb_all(void)
{
 const char *file1 = "./test_l4lb.o";
 const char *file2 = "./test_l4lb_noinline.o";

 test_l4lb(file1);
 test_l4lb(file2);
}
