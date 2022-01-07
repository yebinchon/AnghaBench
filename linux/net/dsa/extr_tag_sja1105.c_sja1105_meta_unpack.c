
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct sja1105_meta {int switch_id; int source_port; int dmac_byte_3; int dmac_byte_4; int tstamp; } ;


 int ETH_HLEN ;
 int UNPACK ;
 int packing (int *,int *,int,int ,int,int ,int ) ;
 int * skb_mac_header (struct sk_buff const*) ;

__attribute__((used)) static void sja1105_meta_unpack(const struct sk_buff *skb,
    struct sja1105_meta *meta)
{
 u8 *buf = skb_mac_header(skb) + ETH_HLEN;
 packing(buf, &meta->tstamp, 31, 0, 4, UNPACK, 0);
 packing(buf + 4, &meta->dmac_byte_4, 7, 0, 1, UNPACK, 0);
 packing(buf + 5, &meta->dmac_byte_3, 7, 0, 1, UNPACK, 0);
 packing(buf + 6, &meta->source_port, 7, 0, 1, UNPACK, 0);
 packing(buf + 7, &meta->switch_id, 7, 0, 1, UNPACK, 0);
}
