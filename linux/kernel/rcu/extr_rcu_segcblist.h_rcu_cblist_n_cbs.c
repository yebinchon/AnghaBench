
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_cblist {int len; } ;


 long READ_ONCE (int ) ;

__attribute__((used)) static inline long rcu_cblist_n_cbs(struct rcu_cblist *rclp)
{
 return READ_ONCE(rclp->len);
}
