
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hsr_priv {int dummy; } ;
struct hsr_port {int dev; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int HSR_A_NODE_ADDR ;
 int HSR_C_NODE_DOWN ;
 int HSR_PT_MASTER ;
 int NLMSG_GOODSIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int hsr_genl_family ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netdev_warn (int ,char*) ;
 int nla_put (struct sk_buff*,int ,int ,unsigned char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void hsr_nl_nodedown(struct hsr_priv *hsr, unsigned char addr[ETH_ALEN])
{
 struct sk_buff *skb;
 void *msg_head;
 struct hsr_port *master;
 int res;

 skb = genlmsg_new(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (!skb)
  goto fail;

 msg_head = genlmsg_put(skb, 0, 0, &hsr_genl_family, 0, HSR_C_NODE_DOWN);
 if (!msg_head)
  goto nla_put_failure;

 res = nla_put(skb, HSR_A_NODE_ADDR, ETH_ALEN, addr);
 if (res < 0)
  goto nla_put_failure;

 genlmsg_end(skb, msg_head);
 genlmsg_multicast(&hsr_genl_family, skb, 0, 0, GFP_ATOMIC);

 return;

nla_put_failure:
 kfree_skb(skb);

fail:
 rcu_read_lock();
 master = hsr_port_get_hsr(hsr, HSR_PT_MASTER);
 netdev_warn(master->dev, "Could not send HSR node down\n");
 rcu_read_unlock();
}
