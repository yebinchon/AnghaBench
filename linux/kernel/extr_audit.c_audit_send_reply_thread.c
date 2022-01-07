
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct audit_reply {int net; int portid; int skb; } ;


 int audit_ctl_lock () ;
 int audit_ctl_unlock () ;
 struct sock* audit_get_sk (int ) ;
 int kfree (struct audit_reply*) ;
 int netlink_unicast (struct sock*,int ,int ,int ) ;
 int put_net (int ) ;

__attribute__((used)) static int audit_send_reply_thread(void *arg)
{
 struct audit_reply *reply = (struct audit_reply *)arg;
 struct sock *sk = audit_get_sk(reply->net);

 audit_ctl_lock();
 audit_ctl_unlock();



 netlink_unicast(sk, reply->skb, reply->portid, 0);
 put_net(reply->net);
 kfree(reply);
 return 0;
}
