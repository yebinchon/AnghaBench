
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_data_structures_once () ;
 scalar_t__ inside_selftest () ;
 int lockdep_free_key_range_imm (void*,unsigned long) ;
 int lockdep_free_key_range_reg (void*,unsigned long) ;

void lockdep_free_key_range(void *start, unsigned long size)
{
 init_data_structures_once();

 if (inside_selftest())
  lockdep_free_key_range_imm(start, size);
 else
  lockdep_free_key_range_reg(start, size);
}
