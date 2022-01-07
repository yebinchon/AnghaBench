
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_rcv_skb (struct sk_buff*,int *) ;
 int sock_diag_mutex ;
 int sock_diag_rcv_msg ;

__attribute__((used)) static void sock_diag_rcv(struct sk_buff *skb)
{
 mutex_lock(&sock_diag_mutex);
 netlink_rcv_skb(skb, &sock_diag_rcv_msg);
 mutex_unlock(&sock_diag_mutex);
}
