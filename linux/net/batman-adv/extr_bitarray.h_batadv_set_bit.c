
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 scalar_t__ BATADV_TQ_LOCAL_WINDOW_SIZE ;
 int set_bit (scalar_t__,unsigned long*) ;

__attribute__((used)) static inline void batadv_set_bit(unsigned long *seq_bits, s32 n)
{

 if (n < 0 || n >= BATADV_TQ_LOCAL_WINDOW_SIZE)
  return;

 set_bit(n, seq_bits);
}
