
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_expire {int dummy; } ;
struct xfrm_mark {int dummy; } ;


 unsigned int NLMSG_ALIGN (int) ;
 unsigned int nla_total_size (int) ;

__attribute__((used)) static inline unsigned int xfrm_expire_msgsize(void)
{
 return NLMSG_ALIGN(sizeof(struct xfrm_user_expire))
        + nla_total_size(sizeof(struct xfrm_mark));
}
