
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __do_binderfs_test () ;
 int change_to_userns () ;

__attribute__((used)) static void binderfs_test_unprivileged()
{
 change_to_userns();
 __do_binderfs_test();
}
