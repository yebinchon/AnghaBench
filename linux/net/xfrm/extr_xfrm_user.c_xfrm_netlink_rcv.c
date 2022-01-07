
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct TYPE_2__ {int xfrm_cfg_mutex; } ;
struct net {TYPE_1__ xfrm; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_rcv_skb (struct sk_buff*,int *) ;
 struct net* sock_net (int ) ;
 int xfrm_user_rcv_msg ;

__attribute__((used)) static void xfrm_netlink_rcv(struct sk_buff *skb)
{
 struct net *net = sock_net(skb->sk);

 mutex_lock(&net->xfrm.xfrm_cfg_mutex);
 netlink_rcv_skb(skb, &xfrm_user_rcv_msg);
 mutex_unlock(&net->xfrm.xfrm_cfg_mutex);
}
