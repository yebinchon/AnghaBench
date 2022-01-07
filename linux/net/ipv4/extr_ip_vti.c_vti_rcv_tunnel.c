
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int saddr; } ;


 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int vti_rcv (struct sk_buff*,int ,int) ;

__attribute__((used)) static int vti_rcv_tunnel(struct sk_buff *skb)
{
 return vti_rcv(skb, ip_hdr(skb)->saddr, 1);
}
