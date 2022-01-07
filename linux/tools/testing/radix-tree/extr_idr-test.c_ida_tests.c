
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_checks () ;
 int ida_exit () ;
 int ida_thread_tests () ;
 int user_ida_checks () ;

void ida_tests(void)
{
 user_ida_checks();
 ida_checks();
 ida_exit();
 ida_thread_tests();
}
