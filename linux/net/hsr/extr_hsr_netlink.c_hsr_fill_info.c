
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct hsr_priv {int sequence_nr; int sup_multicast_addr; } ;
struct hsr_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int ifindex; } ;


 int EMSGSIZE ;
 int ETH_ALEN ;
 int HSR_PT_SLAVE_A ;
 int HSR_PT_SLAVE_B ;
 int IFLA_HSR_SEQ_NR ;
 int IFLA_HSR_SLAVE1 ;
 int IFLA_HSR_SLAVE2 ;
 int IFLA_HSR_SUPERVISION_ADDR ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,int ) ;
 struct hsr_priv* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int hsr_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct hsr_priv *hsr;
 struct hsr_port *port;
 int res;

 hsr = netdev_priv(dev);

 res = 0;

 rcu_read_lock();
 port = hsr_port_get_hsr(hsr, HSR_PT_SLAVE_A);
 if (port)
  res = nla_put_u32(skb, IFLA_HSR_SLAVE1, port->dev->ifindex);
 rcu_read_unlock();
 if (res)
  goto nla_put_failure;

 rcu_read_lock();
 port = hsr_port_get_hsr(hsr, HSR_PT_SLAVE_B);
 if (port)
  res = nla_put_u32(skb, IFLA_HSR_SLAVE2, port->dev->ifindex);
 rcu_read_unlock();
 if (res)
  goto nla_put_failure;

 if (nla_put(skb, IFLA_HSR_SUPERVISION_ADDR, ETH_ALEN,
      hsr->sup_multicast_addr) ||
     nla_put_u16(skb, IFLA_HSR_SEQ_NR, hsr->sequence_nr))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
