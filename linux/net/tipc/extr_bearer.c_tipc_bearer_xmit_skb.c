
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_bearer {TYPE_1__* media; int up; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* send_msg ) (struct net*,struct sk_buff*,struct tipc_bearer*,struct tipc_media_addr*) ;} ;


 struct tipc_bearer* bearer_get (struct net*,int ) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 scalar_t__ msg_is_reset (struct tipc_msg*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct net*,struct sk_buff*,struct tipc_bearer*,struct tipc_media_addr*) ;
 scalar_t__ test_bit (int ,int *) ;

void tipc_bearer_xmit_skb(struct net *net, u32 bearer_id,
     struct sk_buff *skb,
     struct tipc_media_addr *dest)
{
 struct tipc_msg *hdr = buf_msg(skb);
 struct tipc_bearer *b;

 rcu_read_lock();
 b = bearer_get(net, bearer_id);
 if (likely(b && (test_bit(0, &b->up) || msg_is_reset(hdr))))
  b->media->send_msg(net, skb, b, dest);
 else
  kfree_skb(skb);
 rcu_read_unlock();
}
