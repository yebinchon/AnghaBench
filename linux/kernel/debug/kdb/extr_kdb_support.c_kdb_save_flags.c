
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARRAY_SIZE (int *) ;
 int BUG_ON (int) ;
 int kdb_flags ;
 scalar_t__ kdb_flags_index ;
 int * kdb_flags_stack ;

void kdb_save_flags(void)
{
 BUG_ON(kdb_flags_index >= ARRAY_SIZE(kdb_flags_stack));
 kdb_flags_stack[kdb_flags_index++] = kdb_flags;
}
