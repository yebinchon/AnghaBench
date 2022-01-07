
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_DYNTICK_CTRL_CTR ;

__attribute__((used)) static bool rcu_dynticks_in_eqs(int snap)
{
 return !(snap & RCU_DYNTICK_CTRL_CTR);
}
