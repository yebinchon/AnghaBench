
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int id; } ;
struct cfsrvl {int dev_info; TYPE_1__ layer; int supports_flowctrl; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_2__* dn; } ;
struct caif_payload_info {int hdr_len; int * dev_info; int channel_id; } ;
typedef enum caif_modemcmd { ____Placeholder_caif_modemcmd } caif_modemcmd ;
struct TYPE_5__ {int (* transmit ) (TYPE_2__*,struct cfpkt*) ;} ;




 int EINVAL ;
 int ENOMEM ;
 int EPROTO ;
 int SRVL_CTRL_PKT_SIZE ;
 int SRVL_FLOW_OFF ;
 int SRVL_FLOW_ON ;
 int TC_PRIO_CONTROL ;
 int caif_assert (int ) ;
 int cfpkt_add_head (struct cfpkt*,int *,int) ;
 struct cfpkt* cfpkt_create (int ) ;
 int cfpkt_destroy (struct cfpkt*) ;
 struct caif_payload_info* cfpkt_info (struct cfpkt*) ;
 int cfpkt_set_prio (struct cfpkt*,int ) ;
 struct cfsrvl* container_obj (struct cflayer*) ;
 int pr_err (char*) ;
 int stub1 (TYPE_2__*,struct cfpkt*) ;
 int stub2 (TYPE_2__*,struct cfpkt*) ;

__attribute__((used)) static int cfservl_modemcmd(struct cflayer *layr, enum caif_modemcmd ctrl)
{
 struct cfsrvl *service = container_obj(layr);

 caif_assert(layr != ((void*)0));
 caif_assert(layr->dn != ((void*)0));
 caif_assert(layr->dn->transmit != ((void*)0));

 if (!service->supports_flowctrl)
  return 0;

 switch (ctrl) {
 case 128:
  {
   struct cfpkt *pkt;
   struct caif_payload_info *info;
   u8 flow_on = SRVL_FLOW_ON;
   pkt = cfpkt_create(SRVL_CTRL_PKT_SIZE);
   if (!pkt)
    return -ENOMEM;

   if (cfpkt_add_head(pkt, &flow_on, 1) < 0) {
    pr_err("Packet is erroneous!\n");
    cfpkt_destroy(pkt);
    return -EPROTO;
   }
   info = cfpkt_info(pkt);
   info->channel_id = service->layer.id;
   info->hdr_len = 1;
   info->dev_info = &service->dev_info;
   cfpkt_set_prio(pkt, TC_PRIO_CONTROL);
   return layr->dn->transmit(layr->dn, pkt);
  }
 case 129:
  {
   struct cfpkt *pkt;
   struct caif_payload_info *info;
   u8 flow_off = SRVL_FLOW_OFF;
   pkt = cfpkt_create(SRVL_CTRL_PKT_SIZE);
   if (!pkt)
    return -ENOMEM;

   if (cfpkt_add_head(pkt, &flow_off, 1) < 0) {
    pr_err("Packet is erroneous!\n");
    cfpkt_destroy(pkt);
    return -EPROTO;
   }
   info = cfpkt_info(pkt);
   info->channel_id = service->layer.id;
   info->hdr_len = 1;
   info->dev_info = &service->dev_info;
   cfpkt_set_prio(pkt, TC_PRIO_CONTROL);
   return layr->dn->transmit(layr->dn, pkt);
  }
 default:
   break;
 }
 return -EINVAL;
}
