
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RCU_SEQ_CTR_SHIFT ;
 unsigned long RCU_SEQ_STATE_MASK ;
 scalar_t__ ULONG_CMP_GE (unsigned long,unsigned long) ;

__attribute__((used)) static inline unsigned long rcu_seq_diff(unsigned long new, unsigned long old)
{
 unsigned long rnd_diff;

 if (old == new)
  return 0;




 rnd_diff = (new & ~RCU_SEQ_STATE_MASK) -
     ((old + RCU_SEQ_STATE_MASK) & ~RCU_SEQ_STATE_MASK) +
     ((new & RCU_SEQ_STATE_MASK) || (old & RCU_SEQ_STATE_MASK));
 if (ULONG_CMP_GE(RCU_SEQ_STATE_MASK, rnd_diff))
  return 1;
 return ((rnd_diff - RCU_SEQ_STATE_MASK - 1) >> RCU_SEQ_CTR_SHIFT) + 2;
}
