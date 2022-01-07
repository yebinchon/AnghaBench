
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dev_addr; } ;
struct neighbour {int ha; struct net_device* dev; } ;
struct hh_cache {int hh_len; scalar_t__ hh_data; } ;
struct ethhdr {int h_dest; int h_source; scalar_t__ h_proto; } ;
typedef scalar_t__ __be16 ;


 int ETH_ALEN ;
 int ETH_HLEN ;
 int ETH_P_802_3 ;
 int HH_DATA_OFF (int) ;
 scalar_t__ htons (int ) ;
 int memcpy (int ,int ,int ) ;

int eth_header_cache(const struct neighbour *neigh, struct hh_cache *hh, __be16 type)
{
 struct ethhdr *eth;
 const struct net_device *dev = neigh->dev;

 eth = (struct ethhdr *)
     (((u8 *) hh->hh_data) + (HH_DATA_OFF(sizeof(*eth))));

 if (type == htons(ETH_P_802_3))
  return -1;

 eth->h_proto = type;
 memcpy(eth->h_source, dev->dev_addr, ETH_ALEN);
 memcpy(eth->h_dest, neigh->ha, ETH_ALEN);
 hh->hh_len = ETH_HLEN;
 return 0;
}
