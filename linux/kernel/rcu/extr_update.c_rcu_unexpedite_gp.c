
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int rcu_expedited_nesting ;

void rcu_unexpedite_gp(void)
{
 atomic_dec(&rcu_expedited_nesting);
}
