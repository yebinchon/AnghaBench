
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (unsigned long,int ) ;
 int rcu_seq_endval (unsigned long*) ;
 int rcu_seq_state (unsigned long) ;
 int smp_mb () ;

__attribute__((used)) static inline void rcu_seq_end(unsigned long *sp)
{
 smp_mb();
 WARN_ON_ONCE(!rcu_seq_state(*sp));
 WRITE_ONCE(*sp, rcu_seq_endval(sp));
}
