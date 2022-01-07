
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int sk; } ;
struct flow_keys {int dummy; } ;
typedef scalar_t__ __be32 ;


 int addr_fold (int ) ;
 scalar_t__ flow_get_u32_src (struct flow_keys const*) ;
 int ntohl (scalar_t__) ;

__attribute__((used)) static u32 flow_get_src(const struct sk_buff *skb, const struct flow_keys *flow)
{
 __be32 src = flow_get_u32_src(flow);

 if (src)
  return ntohl(src);

 return addr_fold(skb->sk);
}
