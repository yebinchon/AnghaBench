
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_stack () ;
 int pr_info (char*) ;

__attribute__((used)) static void backtrace_test_normal(void)
{
 pr_info("Testing a backtrace from process context.\n");
 pr_info("The following trace is a kernel self test and not a bug!\n");

 dump_stack();
}
