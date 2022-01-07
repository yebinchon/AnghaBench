
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RCU_SEQ_STATE_MASK ;
 int READ_ONCE (unsigned long) ;
 int ULONG_CMP_LT (unsigned long,int ) ;

__attribute__((used)) static inline bool rcu_seq_started(unsigned long *sp, unsigned long s)
{
 return ULONG_CMP_LT((s - 1) & ~RCU_SEQ_STATE_MASK, READ_ONCE(*sp));
}
