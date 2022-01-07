
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int cb_lock ;
 int down_read (int *) ;
 int genl_rcv_msg ;
 int netlink_rcv_skb (struct sk_buff*,int *) ;
 int up_read (int *) ;

__attribute__((used)) static void genl_rcv(struct sk_buff *skb)
{
 down_read(&cb_lock);
 netlink_rcv_skb(skb, &genl_rcv_msg);
 up_read(&cb_lock);
}
