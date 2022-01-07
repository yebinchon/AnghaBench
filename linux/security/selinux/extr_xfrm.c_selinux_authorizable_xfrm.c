
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int security; } ;


 int selinux_authorizable_ctx (int ) ;

__attribute__((used)) static inline int selinux_authorizable_xfrm(struct xfrm_state *x)
{
 return selinux_authorizable_ctx(x->security);
}
