
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_1__* up; } ;
struct TYPE_2__ {int (* receive ) (TYPE_1__*,struct cfpkt*) ;} ;


 int EPROTO ;
 int cfpkt_destroy (struct cfpkt*) ;
 scalar_t__ cfpkt_extr_head (struct cfpkt*,int *,int) ;
 int pr_err (char*) ;
 int stub1 (TYPE_1__*,struct cfpkt*) ;

__attribute__((used)) static int cfvidl_receive(struct cflayer *layr, struct cfpkt *pkt)
{
 u32 videoheader;
 if (cfpkt_extr_head(pkt, &videoheader, 4) < 0) {
  pr_err("Packet is erroneous!\n");
  cfpkt_destroy(pkt);
  return -EPROTO;
 }
 return layr->up->receive(layr->up, pkt);
}
