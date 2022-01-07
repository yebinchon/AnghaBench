
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __do_binderfs_test () ;
 scalar_t__ geteuid () ;
 int ksft_print_msg (char*) ;

__attribute__((used)) static void binderfs_test_privileged()
{
 if (geteuid() != 0)
  ksft_print_msg(
   "Tests are not run as root. Skipping privileged tests\n");
 else
  __do_binderfs_test();
}
