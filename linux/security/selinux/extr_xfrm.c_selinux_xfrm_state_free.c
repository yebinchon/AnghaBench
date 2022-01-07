
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int security; } ;


 int selinux_xfrm_free (int ) ;

void selinux_xfrm_state_free(struct xfrm_state *x)
{
 selinux_xfrm_free(x->security);
}
