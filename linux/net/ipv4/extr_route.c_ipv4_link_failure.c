
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtable {int dst; } ;


 int dst_set_expires (int *,int ) ;
 int ipv4_send_dest_unreach (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

__attribute__((used)) static void ipv4_link_failure(struct sk_buff *skb)
{
 struct rtable *rt;

 ipv4_send_dest_unreach(skb);

 rt = skb_rtable(skb);
 if (rt)
  dst_set_expires(&rt->dst, 0);
}
