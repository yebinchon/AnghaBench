
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct flow_keys {int dummy; } ;
struct TYPE_3__ {int all; } ;
struct TYPE_4__ {TYPE_1__ u; } ;


 int CTTUPLE (struct sk_buff const*,int ) ;
 TYPE_2__ dst ;
 int flow_get_proto_dst (struct sk_buff const*,struct flow_keys const*) ;
 int ntohs (int ) ;

__attribute__((used)) static u32 flow_get_nfct_proto_dst(const struct sk_buff *skb,
       const struct flow_keys *flow)
{
 return ntohs(CTTUPLE(skb, dst.u.all));
fallback:
 return flow_get_proto_dst(skb, flow);
}
