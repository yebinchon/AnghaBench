
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int lowpan_rx_result ;
struct TYPE_2__ {scalar_t__ d_size; } ;


 int RX_CONTINUE ;
 int RX_DROP_UNUSABLE ;
 int RX_QUEUED ;
 TYPE_1__* lowpan_802154_cb (struct sk_buff*) ;
 int lowpan_iphc_decompress (struct sk_buff*) ;
 int lowpan_is_iphc (int ) ;
 int * skb_network_header (struct sk_buff*) ;

__attribute__((used)) static lowpan_rx_result lowpan_rx_h_iphc(struct sk_buff *skb)
{
 int ret;

 if (!lowpan_is_iphc(*skb_network_header(skb)))
  return RX_CONTINUE;




 lowpan_802154_cb(skb)->d_size = 0;

 ret = lowpan_iphc_decompress(skb);
 if (ret < 0)
  return RX_DROP_UNUSABLE;

 return RX_QUEUED;
}
