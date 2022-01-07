
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long READ_ONCE (unsigned long) ;

__attribute__((used)) static inline unsigned long rcu_seq_current(unsigned long *sp)
{
 return READ_ONCE(*sp);
}
