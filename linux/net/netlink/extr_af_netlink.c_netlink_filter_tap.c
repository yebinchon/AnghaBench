
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_protocol; } ;
struct sk_buff {struct sock* sk; } ;
__attribute__((used)) static bool netlink_filter_tap(const struct sk_buff *skb)
{
 struct sock *sk = skb->sk;




 switch (sk->sk_protocol) {
 case 131:
 case 129:
 case 130:
 case 132:
 case 128:
 case 135:
 case 133:
 case 134:
  return 1;
 }

 return 0;
}
