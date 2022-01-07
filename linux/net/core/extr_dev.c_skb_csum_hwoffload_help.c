
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int csum_not_inet; } ;
typedef int netdev_features_t ;


 int const NETIF_F_CSUM_MASK ;
 int const NETIF_F_SCTP_CRC ;
 int skb_checksum_help (struct sk_buff*) ;
 int skb_crc32c_csum_help (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

int skb_csum_hwoffload_help(struct sk_buff *skb,
       const netdev_features_t features)
{
 if (unlikely(skb->csum_not_inet))
  return !!(features & NETIF_F_SCTP_CRC) ? 0 :
   skb_crc32c_csum_help(skb);

 return !!(features & NETIF_F_CSUM_MASK) ? 0 : skb_checksum_help(skb);
}
