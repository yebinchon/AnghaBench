
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct auditd_connection {int portid; int net; } ;


 int ECONNREFUSED ;
 struct sock* audit_get_sk (struct net*) ;
 int auditd_conn ;
 int auditd_reset (struct auditd_connection*) ;
 struct net* get_net (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 int put_net (struct net*) ;
 struct auditd_connection* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int auditd_send_unicast_skb(struct sk_buff *skb)
{
 int rc;
 u32 portid;
 struct net *net;
 struct sock *sk;
 struct auditd_connection *ac;
 rcu_read_lock();
 ac = rcu_dereference(auditd_conn);
 if (!ac) {
  rcu_read_unlock();
  kfree_skb(skb);
  rc = -ECONNREFUSED;
  goto err;
 }
 net = get_net(ac->net);
 sk = audit_get_sk(net);
 portid = ac->portid;
 rcu_read_unlock();

 rc = netlink_unicast(sk, skb, portid, 0);
 put_net(net);
 if (rc < 0)
  goto err;

 return rc;

err:
 if (ac && rc == -ECONNREFUSED)
  auditd_reset(ac);
 return rc;
}
