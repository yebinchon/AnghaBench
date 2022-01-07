
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfpkt {int dummy; } ;
typedef enum caif_direction { ____Placeholder_caif_direction } caif_direction ;
struct TYPE_2__ {int erronous; } ;


 TYPE_1__* cfpkt_priv (struct cfpkt*) ;
 struct cfpkt* skb_to_pkt (void*) ;

struct cfpkt *cfpkt_fromnative(enum caif_direction dir, void *nativepkt)
{
 struct cfpkt *pkt = skb_to_pkt(nativepkt);
 cfpkt_priv(pkt)->erronous = 0;
 return pkt;
}
