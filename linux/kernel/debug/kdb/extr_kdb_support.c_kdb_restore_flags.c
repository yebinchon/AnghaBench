
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int kdb_flags ;
 size_t kdb_flags_index ;
 int * kdb_flags_stack ;

void kdb_restore_flags(void)
{
 BUG_ON(kdb_flags_index <= 0);
 kdb_flags = kdb_flags_stack[--kdb_flags_index];
}
