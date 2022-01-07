
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_user_offload {int flags; int ifindex; } ;
struct xfrm_state_offload {int flags; TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 int EMSGSIZE ;
 int XFRMA_OFFLOAD_DEV ;
 int memset (struct xfrm_user_offload*,int ,int) ;
 struct xfrm_user_offload* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;

__attribute__((used)) static int copy_user_offload(struct xfrm_state_offload *xso, struct sk_buff *skb)
{
 struct xfrm_user_offload *xuo;
 struct nlattr *attr;

 attr = nla_reserve(skb, XFRMA_OFFLOAD_DEV, sizeof(*xuo));
 if (attr == ((void*)0))
  return -EMSGSIZE;

 xuo = nla_data(attr);
 memset(xuo, 0, sizeof(*xuo));
 xuo->ifindex = xso->dev->ifindex;
 xuo->flags = xso->flags;

 return 0;
}
