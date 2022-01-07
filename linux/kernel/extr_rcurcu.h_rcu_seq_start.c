
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (unsigned long,unsigned long) ;
 int rcu_seq_state (unsigned long) ;
 int smp_mb () ;

__attribute__((used)) static inline void rcu_seq_start(unsigned long *sp)
{
 WRITE_ONCE(*sp, *sp + 1);
 smp_mb();
 WARN_ON_ONCE(rcu_seq_state(*sp) != 1);
}
