
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int rcu_expedited_nesting ;

void rcu_expedite_gp(void)
{
 atomic_inc(&rcu_expedited_nesting);
}
