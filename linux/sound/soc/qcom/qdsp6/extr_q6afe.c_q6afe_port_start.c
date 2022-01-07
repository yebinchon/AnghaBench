
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct q6afe_port {int id; int cfg_type; int token; int * scfg; int port_cfg; struct q6afe* afe; } ;
struct q6afe {int dev; } ;
struct TYPE_2__ {int pkt_size; int opcode; int token; scalar_t__ dest_port; scalar_t__ src_port; int hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;
struct afe_port_cmd_device_start {int port_id; } ;


 int AFE_MODULE_AUDIO_DEV_INTERFACE ;
 int AFE_MODULE_TDM ;
 int AFE_PARAM_ID_PORT_SLOT_MAPPING_CONFIG ;
 int AFE_PORT_CMD_DEVICE_START ;
 int APR_HDR_FIELD (int ,int ,int ) ;
 int APR_HDR_LEN (int) ;
 int APR_HDR_SIZE ;
 int APR_MSG_TYPE_SEQ_CMD ;
 int APR_PKT_VER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int afe_apr_send_pkt (struct q6afe*,struct apr_pkt*,struct q6afe_port*) ;
 int dev_err (int ,char*,int,int) ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int q6afe_port_set_param_v2 (struct q6afe_port*,int *,int,int ,int) ;

int q6afe_port_start(struct q6afe_port *port)
{
 struct afe_port_cmd_device_start *start;
 struct q6afe *afe = port->afe;
 int port_id = port->id;
 int ret, param_id = port->cfg_type;
 struct apr_pkt *pkt;
 int pkt_size;
 void *p;

 ret = q6afe_port_set_param_v2(port, &port->port_cfg, param_id,
           AFE_MODULE_AUDIO_DEV_INTERFACE,
           sizeof(port->port_cfg));
 if (ret) {
  dev_err(afe->dev, "AFE enable for port 0x%x failed %d\n",
   port_id, ret);
  return ret;
 }

 if (port->scfg) {
  ret = q6afe_port_set_param_v2(port, port->scfg,
     AFE_PARAM_ID_PORT_SLOT_MAPPING_CONFIG,
     AFE_MODULE_TDM, sizeof(*port->scfg));
  if (ret) {
   dev_err(afe->dev, "AFE enable for port 0x%x failed %d\n",
   port_id, ret);
   return ret;
  }
 }

 pkt_size = APR_HDR_SIZE + sizeof(*start);
 p = kzalloc(pkt_size, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 pkt = p;
 start = p + APR_HDR_SIZE;

 pkt->hdr.hdr_field = APR_HDR_FIELD(APR_MSG_TYPE_SEQ_CMD,
         APR_HDR_LEN(APR_HDR_SIZE),
         APR_PKT_VER);
 pkt->hdr.pkt_size = pkt_size;
 pkt->hdr.src_port = 0;
 pkt->hdr.dest_port = 0;
 pkt->hdr.token = port->token;
 pkt->hdr.opcode = AFE_PORT_CMD_DEVICE_START;

 start->port_id = port_id;

 ret = afe_apr_send_pkt(afe, pkt, port);
 if (ret)
  dev_err(afe->dev, "AFE enable for port 0x%x failed %d\n",
   port_id, ret);

 kfree(pkt);
 return ret;
}
