
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ip_proto; } ;
struct flow_keys {TYPE_1__ basic; } ;



__attribute__((used)) static u32 flow_get_proto(const struct sk_buff *skb,
     const struct flow_keys *flow)
{
 return flow->basic.ip_proto;
}
