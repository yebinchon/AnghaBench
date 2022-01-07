
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ test_error ;

__attribute__((used)) static bool break_test(void)
{
 return test_error || kthread_should_stop();
}
