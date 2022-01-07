
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RCU_SEQ_CTR_SHIFT ;

__attribute__((used)) static inline unsigned long rcu_seq_ctr(unsigned long s)
{
 return s >> RCU_SEQ_CTR_SHIFT;
}
