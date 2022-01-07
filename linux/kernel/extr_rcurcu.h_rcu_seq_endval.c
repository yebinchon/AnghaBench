
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RCU_SEQ_STATE_MASK ;

__attribute__((used)) static inline unsigned long rcu_seq_endval(unsigned long *sp)
{
 return (*sp | RCU_SEQ_STATE_MASK) + 1;
}
