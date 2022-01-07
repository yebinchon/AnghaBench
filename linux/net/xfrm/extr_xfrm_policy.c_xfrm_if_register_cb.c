
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_if_cb {int dummy; } ;


 int rcu_assign_pointer (int ,struct xfrm_if_cb const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfrm_if_cb ;
 int xfrm_if_cb_lock ;

void xfrm_if_register_cb(const struct xfrm_if_cb *ifcb)
{
 spin_lock(&xfrm_if_cb_lock);
 rcu_assign_pointer(xfrm_if_cb, ifcb);
 spin_unlock(&xfrm_if_cb_lock);
}
