
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cfserl {scalar_t__ usestx; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_1__* dn; } ;
struct TYPE_2__ {int (* transmit ) (TYPE_1__*,struct cfpkt*) ;} ;


 int CFSERL_STX ;
 int cfpkt_add_head (struct cfpkt*,int *,int) ;
 struct cfserl* container_obj (struct cflayer*) ;
 int stub1 (TYPE_1__*,struct cfpkt*) ;

__attribute__((used)) static int cfserl_transmit(struct cflayer *layer, struct cfpkt *newpkt)
{
 struct cfserl *layr = container_obj(layer);
 u8 tmp8 = CFSERL_STX;
 if (layr->usestx)
  cfpkt_add_head(newpkt, &tmp8, 1);
 return layer->dn->transmit(layer->dn, newpkt);
}
