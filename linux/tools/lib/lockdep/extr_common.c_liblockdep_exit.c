
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_check_no_locks_held () ;

__attribute__((used)) __attribute__((destructor)) static void liblockdep_exit(void)
{
 debug_check_no_locks_held();
}
