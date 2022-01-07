
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int security; } ;


 int selinux_xfrm_delete (int ) ;

int selinux_xfrm_state_delete(struct xfrm_state *x)
{
 return selinux_xfrm_delete(x->security);
}
