
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int inet_iif (struct sk_buff const*) ;

__attribute__((used)) static int sctp_v4_skb_iif(const struct sk_buff *skb)
{
 return inet_iif(skb);
}
