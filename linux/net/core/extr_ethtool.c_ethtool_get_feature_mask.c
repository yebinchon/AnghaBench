
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int netdev_features_t ;


 int BUG () ;
 int NETIF_F_ALL_TSO ;
 int NETIF_F_CSUM_MASK ;
 int NETIF_F_GRO ;
 int NETIF_F_GSO ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SCTP_CRC ;
 int NETIF_F_SG ;

__attribute__((used)) static netdev_features_t ethtool_get_feature_mask(u32 eth_cmd)
{


 switch (eth_cmd) {
 case 134:
 case 128:
  return NETIF_F_CSUM_MASK | NETIF_F_SCTP_CRC;
 case 137:
 case 131:
  return NETIF_F_RXCSUM;
 case 136:
 case 130:
  return NETIF_F_SG;
 case 135:
 case 129:
  return NETIF_F_ALL_TSO;
 case 138:
 case 132:
  return NETIF_F_GSO;
 case 139:
 case 133:
  return NETIF_F_GRO;
 default:
  BUG();
 }
}
