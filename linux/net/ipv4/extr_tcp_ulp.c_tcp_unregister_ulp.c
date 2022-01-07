
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ulp_ops {int list; } ;


 int list_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;
 int tcp_ulp_list_lock ;

void tcp_unregister_ulp(struct tcp_ulp_ops *ulp)
{
 spin_lock(&tcp_ulp_list_lock);
 list_del_rcu(&ulp->list);
 spin_unlock(&tcp_ulp_list_lock);

 synchronize_rcu();
}
