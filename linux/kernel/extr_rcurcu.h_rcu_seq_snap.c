
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_SEQ_STATE_MASK ;
 int READ_ONCE (unsigned long) ;
 int smp_mb () ;

__attribute__((used)) static inline unsigned long rcu_seq_snap(unsigned long *sp)
{
 unsigned long s;

 s = (READ_ONCE(*sp) + 2 * RCU_SEQ_STATE_MASK + 1) & ~RCU_SEQ_STATE_MASK;
 smp_mb();
 return s;
}
