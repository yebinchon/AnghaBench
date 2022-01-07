
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int id; } ;
struct cfsrvl {int dev_info; TYPE_1__ layer; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_2__* dn; } ;
struct caif_payload_info {int * dev_info; int channel_id; } ;
struct TYPE_4__ {int (* transmit ) (TYPE_2__*,struct cfpkt*) ;} ;


 int cfpkt_add_head (struct cfpkt*,int *,int) ;
 int cfpkt_destroy (struct cfpkt*) ;
 struct caif_payload_info* cfpkt_info (struct cfpkt*) ;
 int cfsrvl_ready (struct cfsrvl*,int*) ;
 struct cfsrvl* container_obj (struct cflayer*) ;
 int stub1 (TYPE_2__*,struct cfpkt*) ;

__attribute__((used)) static int cfvidl_transmit(struct cflayer *layr, struct cfpkt *pkt)
{
 struct cfsrvl *service = container_obj(layr);
 struct caif_payload_info *info;
 u32 videoheader = 0;
 int ret;

 if (!cfsrvl_ready(service, &ret)) {
  cfpkt_destroy(pkt);
  return ret;
 }

 cfpkt_add_head(pkt, &videoheader, 4);

 info = cfpkt_info(pkt);
 info->channel_id = service->layer.id;
 info->dev_info = &service->dev_info;
 return layr->dn->transmit(layr->dn, pkt);
}
