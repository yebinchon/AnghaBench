
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_waiters ;
 int clear_bit_unlock (long,void volatile*) ;
 int test_bit (int ,void volatile*) ;

__attribute__((used)) static inline bool clear_bit_unlock_is_negative_byte(long nr, volatile void *mem)
{
 clear_bit_unlock(nr, mem);

 return test_bit(PG_waiters, mem);
}
