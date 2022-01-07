
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_check_conv_user () ;
 int ida_check_nomem () ;
 int ida_check_random () ;
 int ida_simple_get_remove_test () ;
 int radix_tree_cpu_dead (int) ;

void user_ida_checks(void)
{
 radix_tree_cpu_dead(1);

 ida_check_nomem();
 ida_check_conv_user();
 ida_check_random();
 ida_simple_get_remove_test();

 radix_tree_cpu_dead(1);
}
