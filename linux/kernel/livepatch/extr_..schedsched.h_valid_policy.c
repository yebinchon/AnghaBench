
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dl_policy (int) ;
 scalar_t__ fair_policy (int) ;
 scalar_t__ idle_policy (int) ;
 scalar_t__ rt_policy (int) ;

__attribute__((used)) static inline bool valid_policy(int policy)
{
 return idle_policy(policy) || fair_policy(policy) ||
  rt_policy(policy) || dl_policy(policy);
}
