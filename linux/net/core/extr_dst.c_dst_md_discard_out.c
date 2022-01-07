
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int WARN_ONCE (int,char*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int dst_md_discard_out(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 WARN_ONCE(1, "Attempting to call output on metadata dst\n");
 kfree_skb(skb);
 return 0;
}
