
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {int dummy; } ;


 scalar_t__ XFRM_POLICY_MAX ;
 int __xfrm_policy_link (struct xfrm_policy*,scalar_t__) ;

__attribute__((used)) static void xfrm_sk_policy_link(struct xfrm_policy *pol, int dir)
{
 __xfrm_policy_link(pol, XFRM_POLICY_MAX + dir);
}
