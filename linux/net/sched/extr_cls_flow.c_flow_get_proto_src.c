
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct TYPE_2__ {int src; scalar_t__ ports; } ;
struct flow_keys {TYPE_1__ ports; } ;


 int addr_fold (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static u32 flow_get_proto_src(const struct sk_buff *skb,
         const struct flow_keys *flow)
{
 if (flow->ports.ports)
  return ntohs(flow->ports.src);

 return addr_fold(skb->sk);
}
