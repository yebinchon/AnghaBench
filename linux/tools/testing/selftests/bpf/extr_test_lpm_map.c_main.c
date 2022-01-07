
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int srand (int) ;
 int test_lpm_basic () ;
 int test_lpm_delete () ;
 int test_lpm_get_next_key () ;
 int test_lpm_ipaddr () ;
 int test_lpm_map (int) ;
 int test_lpm_multi_thread () ;
 int test_lpm_order () ;

int main(void)
{
 int i;


 srand(0xf00ba1);

 test_lpm_basic();
 test_lpm_order();


 for (i = 1; i <= 16; ++i)
  test_lpm_map(i);

 test_lpm_ipaddr();
 test_lpm_delete();
 test_lpm_get_next_key();
 test_lpm_multi_thread();

 printf("test_lpm: OK\n");
 return 0;
}
