
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy_walk {int dummy; } ;
struct netlink_callback {scalar_t__ args; } ;


 int BUILD_BUG_ON (int) ;
 int XFRM_POLICY_TYPE_ANY ;
 int xfrm_policy_walk_init (struct xfrm_policy_walk*,int ) ;

__attribute__((used)) static int xfrm_dump_policy_start(struct netlink_callback *cb)
{
 struct xfrm_policy_walk *walk = (struct xfrm_policy_walk *)cb->args;

 BUILD_BUG_ON(sizeof(*walk) > sizeof(cb->args));

 xfrm_policy_walk_init(walk, XFRM_POLICY_TYPE_ANY);
 return 0;
}
