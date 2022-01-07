
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int gso_partial_features; } ;
typedef int netdev_features_t ;


 int NETIF_F_ALL_TSO ;
 int NETIF_F_GRO_HW ;
 int NETIF_F_GSO ;
 int NETIF_F_GSO_PARTIAL ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXFCS ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_TSO_ECN ;
 int NETIF_F_TSO_MANGLEID ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*) ;

__attribute__((used)) static netdev_features_t netdev_fix_features(struct net_device *dev,
 netdev_features_t features)
{

 if ((features & NETIF_F_HW_CSUM) &&
     (features & (NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM))) {
  netdev_warn(dev, "mixed HW and IP checksum settings.\n");
  features &= ~(NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM);
 }


 if ((features & NETIF_F_ALL_TSO) && !(features & NETIF_F_SG)) {
  netdev_dbg(dev, "Dropping TSO features since no SG feature.\n");
  features &= ~NETIF_F_ALL_TSO;
 }

 if ((features & NETIF_F_TSO) && !(features & NETIF_F_HW_CSUM) &&
     !(features & NETIF_F_IP_CSUM)) {
  netdev_dbg(dev, "Dropping TSO features since no CSUM feature.\n");
  features &= ~NETIF_F_TSO;
  features &= ~NETIF_F_TSO_ECN;
 }

 if ((features & NETIF_F_TSO6) && !(features & NETIF_F_HW_CSUM) &&
      !(features & NETIF_F_IPV6_CSUM)) {
  netdev_dbg(dev, "Dropping TSO6 features since no CSUM feature.\n");
  features &= ~NETIF_F_TSO6;
 }


 if ((features & NETIF_F_TSO_MANGLEID) && !(features & NETIF_F_TSO))
  features &= ~NETIF_F_TSO_MANGLEID;


 if ((features & NETIF_F_ALL_TSO) == NETIF_F_TSO_ECN)
  features &= ~NETIF_F_TSO_ECN;


 if ((features & NETIF_F_GSO) && !(features & NETIF_F_SG)) {
  netdev_dbg(dev, "Dropping NETIF_F_GSO since no SG feature.\n");
  features &= ~NETIF_F_GSO;
 }


 if ((features & dev->gso_partial_features) &&
     !(features & NETIF_F_GSO_PARTIAL)) {
  netdev_dbg(dev,
      "Dropping partially supported GSO features since no GSO partial.\n");
  features &= ~dev->gso_partial_features;
 }

 if (!(features & NETIF_F_RXCSUM)) {





  if (features & NETIF_F_GRO_HW) {
   netdev_dbg(dev, "Dropping NETIF_F_GRO_HW since no RXCSUM feature.\n");
   features &= ~NETIF_F_GRO_HW;
  }
 }


 if (features & NETIF_F_RXFCS) {
  if (features & NETIF_F_LRO) {
   netdev_dbg(dev, "Dropping LRO feature since RX-FCS is requested.\n");
   features &= ~NETIF_F_LRO;
  }

  if (features & NETIF_F_GRO_HW) {
   netdev_dbg(dev, "Dropping HW-GRO feature since RX-FCS is requested.\n");
   features &= ~NETIF_F_GRO_HW;
  }
 }

 return features;
}
