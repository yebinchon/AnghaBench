
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 scalar_t__ sctp_rcv (struct sk_buff*) ;

__attribute__((used)) static int sctp6_rcv(struct sk_buff *skb)
{
 return sctp_rcv(skb) ? -1 : 0;
}
