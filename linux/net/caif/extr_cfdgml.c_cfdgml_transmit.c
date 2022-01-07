
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int id; } ;
struct cfsrvl {int dev_info; TYPE_1__ layer; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_2__* dn; } ;
struct caif_payload_info {int hdr_len; int * dev_info; int channel_id; } ;
struct TYPE_4__ {int (* transmit ) (TYPE_2__*,struct cfpkt*) ;} ;


 scalar_t__ DGM_MTU ;
 int EMSGSIZE ;
 int cfpkt_add_head (struct cfpkt*,int*,int) ;
 int cfpkt_destroy (struct cfpkt*) ;
 scalar_t__ cfpkt_getlen (struct cfpkt*) ;
 struct caif_payload_info* cfpkt_info (struct cfpkt*) ;
 int cfsrvl_ready (struct cfsrvl*,int*) ;
 struct cfsrvl* container_obj (struct cflayer*) ;
 int stub1 (TYPE_2__*,struct cfpkt*) ;

__attribute__((used)) static int cfdgml_transmit(struct cflayer *layr, struct cfpkt *pkt)
{
 u8 packet_type;
 u32 zero = 0;
 struct caif_payload_info *info;
 struct cfsrvl *service = container_obj(layr);
 int ret;

 if (!cfsrvl_ready(service, &ret)) {
  cfpkt_destroy(pkt);
  return ret;
 }


 if (cfpkt_getlen(pkt) > DGM_MTU) {
  cfpkt_destroy(pkt);
  return -EMSGSIZE;
 }

 cfpkt_add_head(pkt, &zero, 3);
 packet_type = 0x08;
 cfpkt_add_head(pkt, &packet_type, 1);


 info = cfpkt_info(pkt);
 info->channel_id = service->layer.id;



 info->hdr_len = 4;
 info->dev_info = &service->dev_info;
 return layr->dn->transmit(layr->dn, pkt);
}
