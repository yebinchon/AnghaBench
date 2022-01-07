
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfpkt {int dummy; } ;
struct caif_payload_info {int dummy; } ;
struct TYPE_2__ {int cb; } ;


 TYPE_1__* pkt_to_skb (struct cfpkt*) ;

struct caif_payload_info *cfpkt_info(struct cfpkt *pkt)
{
 return (struct caif_payload_info *)&pkt_to_skb(pkt)->cb;
}
