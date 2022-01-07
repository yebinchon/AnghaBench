
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct datapath {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 struct datapath* get_dp_rcu (struct net*,int) ;
 int lockdep_ovsl_is_held () ;
 int rcu_read_lock () ;
 int rcu_read_lock_held () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline struct datapath *get_dp(struct net *net, int dp_ifindex)
{
 struct datapath *dp;

 WARN_ON_ONCE(!rcu_read_lock_held() && !lockdep_ovsl_is_held());
 rcu_read_lock();
 dp = get_dp_rcu(net, dp_ifindex);
 rcu_read_unlock();

 return dp;
}
