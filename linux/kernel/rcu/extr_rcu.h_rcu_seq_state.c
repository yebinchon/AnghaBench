
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RCU_SEQ_STATE_MASK ;

__attribute__((used)) static inline int rcu_seq_state(unsigned long s)
{
 return s & RCU_SEQ_STATE_MASK;
}
