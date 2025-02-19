
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct q6copp {int copp_idx; } ;
struct q6adm_cmd_device_open_v5 {int mode_of_operation; int endpoint_id_1; int topology_id; int dev_num_channel; int bit_width; int sample_rate; int * dev_channel_mapping; int flags; } ;
struct q6adm {int dummy; } ;
struct TYPE_2__ {int pkt_size; int src_port; int dest_port; int token; int opcode; int hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;


 int ADM_CMDRSP_DEVICE_OPEN_V5 ;
 int ADM_CMD_DEVICE_OPEN_V5 ;
 int ADM_LEGACY_DEVICE_SESSION ;
 int APR_HDR_FIELD (int ,int ,int ) ;
 int APR_HDR_LEN (int) ;
 int APR_HDR_SIZE ;
 int APR_MSG_TYPE_SEQ_CMD ;
 int APR_PKT_VER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int q6adm_apr_send_copp_pkt (struct q6adm*,struct q6copp*,struct apr_pkt*,int ) ;
 int q6afe_get_port_id (int) ;
 int q6dsp_map_channels (int *,int) ;

__attribute__((used)) static int q6adm_device_open(struct q6adm *adm, struct q6copp *copp,
        int port_id, int path, int topology,
        int channel_mode, int bit_width, int rate)
{
 struct q6adm_cmd_device_open_v5 *open;
 int afe_port = q6afe_get_port_id(port_id);
 struct apr_pkt *pkt;
 void *p;
 int ret, pkt_size;

 pkt_size = APR_HDR_SIZE + sizeof(*open);
 p = kzalloc(pkt_size, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 pkt = p;
 open = p + APR_HDR_SIZE;
 pkt->hdr.hdr_field = APR_HDR_FIELD(APR_MSG_TYPE_SEQ_CMD,
        APR_HDR_LEN(APR_HDR_SIZE),
        APR_PKT_VER);
 pkt->hdr.pkt_size = pkt_size;
 pkt->hdr.src_port = afe_port;
 pkt->hdr.dest_port = afe_port;
 pkt->hdr.token = port_id << 16 | copp->copp_idx;
 pkt->hdr.opcode = ADM_CMD_DEVICE_OPEN_V5;
 open->flags = ADM_LEGACY_DEVICE_SESSION;
 open->mode_of_operation = path;
 open->endpoint_id_1 = afe_port;
 open->topology_id = topology;
 open->dev_num_channel = channel_mode & 0x00FF;
 open->bit_width = bit_width;
 open->sample_rate = rate;

 ret = q6dsp_map_channels(&open->dev_channel_mapping[0],
     channel_mode);
 if (ret)
  goto err;

 ret = q6adm_apr_send_copp_pkt(adm, copp, pkt,
          ADM_CMDRSP_DEVICE_OPEN_V5);

err:
 kfree(pkt);
 return ret;
}
