
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {int primary_key; int tbl; } ;
struct dst_entry {struct net_device* dev; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct neighbour*) ;
 int MAX_ADDR_LEN ;
 int PTR_ERR (struct neighbour*) ;
 struct neighbour* __neigh_lookup_errno (int ,int ,struct net_device*) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,char*,int *,int ) ;
 struct neighbour* dst_neigh_lookup_skb (struct dst_entry*,struct sk_buff*) ;
 scalar_t__ neigh_event_send (struct neighbour*,struct sk_buff*) ;
 int neigh_ha_snapshot (char*,struct neighbour*,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 int ntohs (int ) ;
 int tc_skb_protocol (struct sk_buff*) ;

__attribute__((used)) static int
__teql_resolve(struct sk_buff *skb, struct sk_buff *skb_res,
        struct net_device *dev, struct netdev_queue *txq,
        struct dst_entry *dst)
{
 struct neighbour *n;
 int err = 0;

 n = dst_neigh_lookup_skb(dst, skb);
 if (!n)
  return -ENOENT;

 if (dst->dev != dev) {
  struct neighbour *mn;

  mn = __neigh_lookup_errno(n->tbl, n->primary_key, dev);
  neigh_release(n);
  if (IS_ERR(mn))
   return PTR_ERR(mn);
  n = mn;
 }

 if (neigh_event_send(n, skb_res) == 0) {
  int err;
  char haddr[MAX_ADDR_LEN];

  neigh_ha_snapshot(haddr, n, dev);
  err = dev_hard_header(skb, dev, ntohs(tc_skb_protocol(skb)),
          haddr, ((void*)0), skb->len);

  if (err < 0)
   err = -EINVAL;
 } else {
  err = (skb_res == ((void*)0)) ? -EAGAIN : 1;
 }
 neigh_release(n);
 return err;
}
