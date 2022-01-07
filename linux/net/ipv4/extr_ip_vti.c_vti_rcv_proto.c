
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int vti_rcv (struct sk_buff*,int ,int) ;

__attribute__((used)) static int vti_rcv_proto(struct sk_buff *skb)
{
 return vti_rcv(skb, 0, 0);
}
