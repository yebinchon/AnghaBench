
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_if_cb {int dummy; } ;


 struct xfrm_if_cb const* rcu_dereference (int ) ;
 int xfrm_if_cb ;

__attribute__((used)) static const struct xfrm_if_cb *xfrm_if_get_cb(void)
{
 return rcu_dereference(xfrm_if_cb);
}
