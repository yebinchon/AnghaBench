
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_user_polexpire {int dummy; } ;
struct xfrm_policy {int xfrm_nr; int security; } ;
struct xfrm_mark {int dummy; } ;


 unsigned int NLMSG_ALIGN (int) ;
 unsigned int nla_total_size (int) ;
 unsigned int userpolicy_type_attrsize () ;
 int xfrm_user_sec_ctx_size (int ) ;

__attribute__((used)) static inline unsigned int xfrm_polexpire_msgsize(struct xfrm_policy *xp)
{
 return NLMSG_ALIGN(sizeof(struct xfrm_user_polexpire))
        + nla_total_size(sizeof(struct xfrm_user_tmpl) * xp->xfrm_nr)
        + nla_total_size(xfrm_user_sec_ctx_size(xp->security))
        + nla_total_size(sizeof(struct xfrm_mark))
        + userpolicy_type_attrsize();
}
