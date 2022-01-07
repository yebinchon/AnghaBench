
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct q6afe_port {int id; int token; struct q6afe* afe; } ;
struct q6afe {int dev; } ;
struct TYPE_2__ {int pkt_size; int token; int opcode; scalar_t__ dest_port; scalar_t__ src_port; int hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;
struct afe_port_cmd_device_stop {int port_id; scalar_t__ reserved; } ;


 int AFE_PORT_CMD_DEVICE_STOP ;
 int AFE_PORT_MAX ;
 int APR_HDR_FIELD (int ,int ,int ) ;
 int APR_HDR_LEN (int) ;
 int APR_HDR_SIZE ;
 int APR_MSG_TYPE_SEQ_CMD ;
 int APR_PKT_VER ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int afe_apr_send_pkt (struct q6afe*,struct apr_pkt*,struct q6afe_port*) ;
 int dev_err (int ,char*,int) ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;

int q6afe_port_stop(struct q6afe_port *port)
{
 struct afe_port_cmd_device_stop *stop;
 struct q6afe *afe = port->afe;
 struct apr_pkt *pkt;
 int port_id = port->id;
 int ret = 0;
 int index, pkt_size;
 void *p;

 port_id = port->id;
 index = port->token;
 if (index < 0 || index >= AFE_PORT_MAX) {
  dev_err(afe->dev, "AFE port index[%d] invalid!\n", index);
  return -EINVAL;
 }

 pkt_size = APR_HDR_SIZE + sizeof(*stop);
 p = kzalloc(pkt_size, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 pkt = p;
 stop = p + APR_HDR_SIZE;

 pkt->hdr.hdr_field = APR_HDR_FIELD(APR_MSG_TYPE_SEQ_CMD,
        APR_HDR_LEN(APR_HDR_SIZE),
        APR_PKT_VER);
 pkt->hdr.pkt_size = pkt_size;
 pkt->hdr.src_port = 0;
 pkt->hdr.dest_port = 0;
 pkt->hdr.token = index;
 pkt->hdr.opcode = AFE_PORT_CMD_DEVICE_STOP;
 stop->port_id = port_id;
 stop->reserved = 0;

 ret = afe_apr_send_pkt(afe, pkt, port);
 if (ret)
  dev_err(afe->dev, "AFE close failed %d\n", ret);

 kfree(pkt);
 return ret;
}
