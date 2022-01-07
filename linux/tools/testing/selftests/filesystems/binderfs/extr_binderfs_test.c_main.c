
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binderfs_test_privileged () ;
 int binderfs_test_unprivileged () ;
 int ksft_exit_pass () ;

int main(int argc, char *argv[])
{
 binderfs_test_privileged();
 binderfs_test_unprivileged();
 ksft_exit_pass();
}
