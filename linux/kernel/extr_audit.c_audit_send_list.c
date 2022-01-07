
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct audit_netlink_list {int net; int portid; int q; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 int audit_ctl_lock () ;
 int audit_ctl_unlock () ;
 struct sock* audit_get_sk (int ) ;
 int kfree (struct audit_netlink_list*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 int put_net (int ) ;

int audit_send_list(void *_dest)
{
 struct audit_netlink_list *dest = _dest;
 struct sk_buff *skb;
 struct sock *sk = audit_get_sk(dest->net);


 audit_ctl_lock();
 audit_ctl_unlock();

 while ((skb = __skb_dequeue(&dest->q)) != ((void*)0))
  netlink_unicast(sk, skb, dest->portid, 0);

 put_net(dest->net);
 kfree(dest);

 return 0;
}
