
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_INIT_POINTER (int ,int *) ;
 int synchronize_rcu () ;
 int xfrm_if_cb ;

void xfrm_if_unregister_cb(void)
{
 RCU_INIT_POINTER(xfrm_if_cb, ((void*)0));
 synchronize_rcu();
}
