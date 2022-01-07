
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct hh_cache {scalar_t__ hh_data; } ;
struct ethhdr {int dummy; } ;


 int ETH_ALEN ;
 int HH_DATA_OFF (int) ;
 int memcpy (int *,unsigned char const*,int ) ;

void eth_header_cache_update(struct hh_cache *hh,
        const struct net_device *dev,
        const unsigned char *haddr)
{
 memcpy(((u8 *) hh->hh_data) + HH_DATA_OFF(sizeof(struct ethhdr)),
        haddr, ETH_ALEN);
}
