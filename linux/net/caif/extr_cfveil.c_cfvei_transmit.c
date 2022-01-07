
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int id; } ;
struct cfsrvl {int dev_info; TYPE_1__ layer; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_2__* dn; } ;
struct caif_payload_info {int hdr_len; int * dev_info; int channel_id; } ;
struct TYPE_4__ {int (* transmit ) (TYPE_2__*,struct cfpkt*) ;} ;


 int EPROTO ;
 int caif_assert (int ) ;
 scalar_t__ cfpkt_add_head (struct cfpkt*,int *,int) ;
 int cfpkt_destroy (struct cfpkt*) ;
 struct caif_payload_info* cfpkt_info (struct cfpkt*) ;
 int cfsrvl_ready (struct cfsrvl*,int*) ;
 struct cfsrvl* container_obj (struct cflayer*) ;
 int pr_err (char*) ;
 int stub1 (TYPE_2__*,struct cfpkt*) ;

__attribute__((used)) static int cfvei_transmit(struct cflayer *layr, struct cfpkt *pkt)
{
 u8 tmp = 0;
 struct caif_payload_info *info;
 int ret;
 struct cfsrvl *service = container_obj(layr);
 if (!cfsrvl_ready(service, &ret))
  goto err;
 caif_assert(layr->dn != ((void*)0));
 caif_assert(layr->dn->transmit != ((void*)0));

 if (cfpkt_add_head(pkt, &tmp, 1) < 0) {
  pr_err("Packet is erroneous!\n");
  ret = -EPROTO;
  goto err;
 }


 info = cfpkt_info(pkt);
 info->channel_id = service->layer.id;
 info->hdr_len = 1;
 info->dev_info = &service->dev_info;
 return layr->dn->transmit(layr->dn, pkt);
err:
 cfpkt_destroy(pkt);
 return ret;
}
