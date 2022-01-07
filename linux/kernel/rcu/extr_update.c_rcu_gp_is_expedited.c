
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ rcu_expedited ;
 int rcu_expedited_nesting ;

bool rcu_gp_is_expedited(void)
{
 return rcu_expedited || atomic_read(&rcu_expedited_nesting);
}
