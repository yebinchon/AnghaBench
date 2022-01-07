
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_ONCE (unsigned long) ;
 int ULONG_CMP_GE (int ,unsigned long) ;

__attribute__((used)) static inline bool rcu_seq_done(unsigned long *sp, unsigned long s)
{
 return ULONG_CMP_GE(READ_ONCE(*sp), s);
}
