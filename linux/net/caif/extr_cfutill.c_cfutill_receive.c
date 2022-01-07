
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cfsrvl {int open; } ;
struct cfpkt {int dummy; } ;
struct cflayer {int (* ctrlcmd ) (struct cflayer*,int ,int ) ;TYPE_1__* up; } ;
struct TYPE_2__ {int (* receive ) (TYPE_1__*,struct cfpkt*) ;int * ctrlcmd; } ;


 int CAIF_CTRLCMD_FLOW_OFF_IND ;
 int CAIF_CTRLCMD_FLOW_ON_IND ;
 int CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND ;
 int EPROTO ;




 int caif_assert (int ) ;
 int cfpkt_destroy (struct cfpkt*) ;
 scalar_t__ cfpkt_extr_head (struct cfpkt*,int*,int) ;
 struct cfsrvl* container_obj (struct cflayer*) ;
 int pr_err (char*) ;
 int pr_warn (char*,int,int) ;
 int stub1 (TYPE_1__*,struct cfpkt*) ;
 int stub2 (struct cflayer*,int ,int ) ;
 int stub3 (struct cflayer*,int ,int ) ;
 int stub4 (struct cflayer*,int ,int ) ;

__attribute__((used)) static int cfutill_receive(struct cflayer *layr, struct cfpkt *pkt)
{
 u8 cmd = -1;
 struct cfsrvl *service = container_obj(layr);
 caif_assert(layr != ((void*)0));
 caif_assert(layr->up != ((void*)0));
 caif_assert(layr->up->receive != ((void*)0));
 caif_assert(layr->up->ctrlcmd != ((void*)0));
 if (cfpkt_extr_head(pkt, &cmd, 1) < 0) {
  pr_err("Packet is erroneous!\n");
  cfpkt_destroy(pkt);
  return -EPROTO;
 }

 switch (cmd) {
 case 129:
  return layr->up->receive(layr->up, pkt);
 case 131:
  layr->ctrlcmd(layr, CAIF_CTRLCMD_FLOW_OFF_IND, 0);
  cfpkt_destroy(pkt);
  return 0;
 case 130:
  layr->ctrlcmd(layr, CAIF_CTRLCMD_FLOW_ON_IND, 0);
  cfpkt_destroy(pkt);
  return 0;
 case 128:
  pr_err("REMOTE SHUTDOWN REQUEST RECEIVED\n");
  layr->ctrlcmd(layr, CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND, 0);
  service->open = 0;
  cfpkt_destroy(pkt);
  return 0;
 default:
  cfpkt_destroy(pkt);
  pr_warn("Unknown service control %d (0x%x)\n", cmd, cmd);
  return -EPROTO;
 }
}
