
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ulp_ops {int list; int name; } ;


 int EEXIST ;
 int list_add_tail_rcu (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tcp_ulp_find (int ) ;
 int tcp_ulp_list ;
 int tcp_ulp_list_lock ;

int tcp_register_ulp(struct tcp_ulp_ops *ulp)
{
 int ret = 0;

 spin_lock(&tcp_ulp_list_lock);
 if (tcp_ulp_find(ulp->name))
  ret = -EEXIST;
 else
  list_add_tail_rcu(&ulp->list, &tcp_ulp_list);
 spin_unlock(&tcp_ulp_list_lock);

 return ret;
}
