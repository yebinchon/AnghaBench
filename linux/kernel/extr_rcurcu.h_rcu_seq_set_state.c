
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_SEQ_STATE_MASK ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (unsigned long,unsigned long) ;

__attribute__((used)) static inline void rcu_seq_set_state(unsigned long *sp, int newstate)
{
 WARN_ON_ONCE(newstate & ~RCU_SEQ_STATE_MASK);
 WRITE_ONCE(*sp, (*sp & ~RCU_SEQ_STATE_MASK) + newstate);
}
