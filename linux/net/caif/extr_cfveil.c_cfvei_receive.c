
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cfpkt {int dummy; } ;
struct cflayer {int (* ctrlcmd ) (struct cflayer*,int ,int ) ;TYPE_1__* up; int * receive; } ;
struct TYPE_2__ {int (* receive ) (TYPE_1__*,struct cfpkt*) ;} ;


 int CAIF_CTRLCMD_FLOW_OFF_IND ;
 int CAIF_CTRLCMD_FLOW_ON_IND ;
 int EPROTO ;




 int caif_assert (int ) ;
 int cfpkt_destroy (struct cfpkt*) ;
 scalar_t__ cfpkt_extr_head (struct cfpkt*,int*,int) ;
 int pr_err (char*) ;
 int pr_warn (char*,int,int) ;
 int stub1 (TYPE_1__*,struct cfpkt*) ;
 int stub2 (struct cflayer*,int ,int ) ;
 int stub3 (struct cflayer*,int ,int ) ;

__attribute__((used)) static int cfvei_receive(struct cflayer *layr, struct cfpkt *pkt)
{
 u8 cmd;
 int ret;
 caif_assert(layr->up != ((void*)0));
 caif_assert(layr->receive != ((void*)0));
 caif_assert(layr->ctrlcmd != ((void*)0));


 if (cfpkt_extr_head(pkt, &cmd, 1) < 0) {
  pr_err("Packet is erroneous!\n");
  cfpkt_destroy(pkt);
  return -EPROTO;
 }
 switch (cmd) {
 case 129:
  ret = layr->up->receive(layr->up, pkt);
  return ret;
 case 131:
  layr->ctrlcmd(layr, CAIF_CTRLCMD_FLOW_OFF_IND, 0);
  cfpkt_destroy(pkt);
  return 0;
 case 130:
  layr->ctrlcmd(layr, CAIF_CTRLCMD_FLOW_ON_IND, 0);
  cfpkt_destroy(pkt);
  return 0;
 case 128:
  cfpkt_destroy(pkt);
  return 0;
 default:
  pr_warn("Unknown VEI control packet %d (0x%x)!\n", cmd, cmd);
  cfpkt_destroy(pkt);
  return -EPROTO;
 }
}
