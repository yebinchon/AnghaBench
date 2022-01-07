
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; scalar_t__ ip_summed; int offload_fwd_mark; int csum; int dev; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __wsum ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int* DSA_HLEN ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int csum_add (int ,int ) ;
 int csum_partial (int*,int,int ) ;
 int csum_sub (int ,int ) ;
 int dsa_master_find_slave (struct net_device*,int,int) ;
 int memcpy (int*,int*,int*) ;
 int memmove (int*,int*,int) ;
 int pskb_may_pull (struct sk_buff*,int*) ;
 int skb_pull_rcsum (struct sk_buff*,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *dsa_rcv(struct sk_buff *skb, struct net_device *dev,
          struct packet_type *pt)
{
 u8 *dsa_header;
 int source_device;
 int source_port;

 if (unlikely(!pskb_may_pull(skb, DSA_HLEN)))
  return ((void*)0);




 dsa_header = skb->data - 2;




 if ((dsa_header[0] & 0xc0) != 0x00 && (dsa_header[0] & 0xc0) != 0xc0)
  return ((void*)0);




 source_device = dsa_header[0] & 0x1f;
 source_port = (dsa_header[1] >> 3) & 0x1f;

 skb->dev = dsa_master_find_slave(dev, source_device, source_port);
 if (!skb->dev)
  return ((void*)0);






 if (dsa_header[0] & 0x20) {
  u8 new_header[4];






  new_header[0] = (ETH_P_8021Q >> 8) & 0xff;
  new_header[1] = ETH_P_8021Q & 0xff;
  new_header[2] = dsa_header[2] & ~0x10;
  new_header[3] = dsa_header[3];





  if (dsa_header[1] & 0x01)
   new_header[2] |= 0x10;




  if (skb->ip_summed == CHECKSUM_COMPLETE) {
   __wsum c = skb->csum;
   c = csum_add(c, csum_partial(new_header + 2, 2, 0));
   c = csum_sub(c, csum_partial(dsa_header + 2, 2, 0));
   skb->csum = c;
  }

  memcpy(dsa_header, new_header, DSA_HLEN);
 } else {



  skb_pull_rcsum(skb, DSA_HLEN);
  memmove(skb->data - ETH_HLEN,
   skb->data - ETH_HLEN - DSA_HLEN,
   2 * ETH_ALEN);
 }

 skb->offload_fwd_mark = 1;

 return skb;
}
