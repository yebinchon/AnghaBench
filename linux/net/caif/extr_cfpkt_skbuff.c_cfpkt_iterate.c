
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {void* data; } ;
struct cfpkt {TYPE_1__ skb; } ;


 int EPROTO ;
 int PKT_ERROR (struct cfpkt*,char*) ;
 int cfpkt_getlen (struct cfpkt*) ;
 int is_erronous (struct cfpkt*) ;
 scalar_t__ skb_linearize (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

int cfpkt_iterate(struct cfpkt *pkt,
    u16 (*iter_func)(u16, void *, u16),
    u16 data)
{




 if (unlikely(is_erronous(pkt)))
  return -EPROTO;
 if (unlikely(skb_linearize(&pkt->skb) != 0)) {
  PKT_ERROR(pkt, "linearize failed\n");
  return -EPROTO;
 }
 return iter_func(data, pkt->skb.data, cfpkt_getlen(pkt));
}
