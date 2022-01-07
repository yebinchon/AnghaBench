
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RCU_SEQ_STATE_MASK ;
 int ULONG_CMP_LT (unsigned long,unsigned long) ;

__attribute__((used)) static inline bool rcu_seq_new_gp(unsigned long old, unsigned long new)
{
 return ULONG_CMP_LT((old + RCU_SEQ_STATE_MASK) & ~RCU_SEQ_STATE_MASK,
       new);
}
