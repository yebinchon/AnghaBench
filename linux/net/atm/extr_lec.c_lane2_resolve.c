
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct lec_priv {int lec_arp_lock; } ;
struct lec_arp_table {int sizeoftlvs; int tlvs; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int * kmemdup (int ,int ,int ) ;
 int l_arp_xmt ;
 struct lec_arp_table* lec_arp_find (struct lec_priv*,int const*) ;
 struct lec_priv* netdev_priv (struct net_device*) ;
 int send_to_lecd (struct lec_priv*,int ,int const*,int *,struct sk_buff*) ;
 int skb_copy_to_linear_data (struct sk_buff*,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lane2_resolve(struct net_device *dev, const u8 *dst_mac, int force,
    u8 **tlvs, u32 *sizeoftlvs)
{
 unsigned long flags;
 struct lec_priv *priv = netdev_priv(dev);
 struct lec_arp_table *table;
 struct sk_buff *skb;
 int retval;

 if (force == 0) {
  spin_lock_irqsave(&priv->lec_arp_lock, flags);
  table = lec_arp_find(priv, dst_mac);
  spin_unlock_irqrestore(&priv->lec_arp_lock, flags);
  if (table == ((void*)0))
   return -1;

  *tlvs = kmemdup(table->tlvs, table->sizeoftlvs, GFP_ATOMIC);
  if (*tlvs == ((void*)0))
   return -1;

  *sizeoftlvs = table->sizeoftlvs;

  return 0;
 }

 if (sizeoftlvs == ((void*)0))
  retval = send_to_lecd(priv, l_arp_xmt, dst_mac, ((void*)0), ((void*)0));

 else {
  skb = alloc_skb(*sizeoftlvs, GFP_ATOMIC);
  if (skb == ((void*)0))
   return -1;
  skb->len = *sizeoftlvs;
  skb_copy_to_linear_data(skb, *tlvs, *sizeoftlvs);
  retval = send_to_lecd(priv, l_arp_xmt, dst_mac, ((void*)0), skb);
 }
 return retval;
}
