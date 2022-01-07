
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct route_payload {int num_copps; int session_id; int* port_id; int* copp_idx; } ;
struct q6copp {int refcount; int id; } ;
struct q6adm_session_map_node_v5 {int session_id; int num_copps; } ;
struct q6adm_cmd_matrix_map_routings_v5 {int num_sessions; int matrix_id; } ;
struct TYPE_4__ {int status; scalar_t__ opcode; } ;
struct q6adm {int lock; TYPE_2__ result; int matrix_map_wait; int apr; } ;
struct device {int parent; } ;
struct TYPE_3__ {int pkt_size; scalar_t__ opcode; scalar_t__ token; int hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;


 scalar_t__ ADM_CMD_MATRIX_MAP_ROUTINGS_V5 ;
 int ADM_MATRIX_ID_AUDIO_RX ;
 int ADM_MATRIX_ID_AUDIO_TX ;


 int APR_HDR_FIELD (int ,int ,int ) ;
 int APR_HDR_LEN (int) ;
 int APR_HDR_SIZE ;
 int APR_MSG_TYPE_SEQ_CMD ;
 int APR_PKT_VER ;
 int EINVAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int TIMEOUT_MS ;
 int apr_send_pkt (int ,struct apr_pkt*) ;
 int dev_err (struct device*,char*,int,...) ;
 struct q6adm* dev_get_drvdata (int ) ;
 int kfree (struct apr_pkt*) ;
 int kref_put (int *,int ) ;
 void* kzalloc (int,int ) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct q6copp* q6adm_find_copp (struct q6adm*,int,int) ;
 int q6adm_free_copp ;
 int wait_event_timeout (int ,int,int ) ;

int q6adm_matrix_map(struct device *dev, int path,
       struct route_payload payload_map, int perf_mode)
{
 struct q6adm *adm = dev_get_drvdata(dev->parent);
 struct q6adm_cmd_matrix_map_routings_v5 *route;
 struct q6adm_session_map_node_v5 *node;
 struct apr_pkt *pkt;
 uint16_t *copps_list;
 int pkt_size, ret, i, copp_idx;
 void *matrix_map = ((void*)0);
 struct q6copp *copp;


 pkt_size = (APR_HDR_SIZE + sizeof(*route) + sizeof(*node) +
      (sizeof(uint32_t) * payload_map.num_copps));

 matrix_map = kzalloc(pkt_size, GFP_KERNEL);
 if (!matrix_map)
  return -ENOMEM;

 pkt = matrix_map;
 route = matrix_map + APR_HDR_SIZE;
 node = matrix_map + APR_HDR_SIZE + sizeof(*route);
 copps_list = matrix_map + APR_HDR_SIZE + sizeof(*route) + sizeof(*node);

 pkt->hdr.hdr_field = APR_HDR_FIELD(APR_MSG_TYPE_SEQ_CMD,
        APR_HDR_LEN(APR_HDR_SIZE),
        APR_PKT_VER);
 pkt->hdr.pkt_size = pkt_size;
 pkt->hdr.token = 0;
 pkt->hdr.opcode = ADM_CMD_MATRIX_MAP_ROUTINGS_V5;
 route->num_sessions = 1;

 switch (path) {
 case 128:
  route->matrix_id = ADM_MATRIX_ID_AUDIO_RX;
  break;
 case 129:
  route->matrix_id = ADM_MATRIX_ID_AUDIO_TX;
  break;
 default:
  dev_err(dev, "Wrong path set[%d]\n", path);
  break;
 }

 node->session_id = payload_map.session_id;
 node->num_copps = payload_map.num_copps;

 for (i = 0; i < payload_map.num_copps; i++) {
  int port_idx = payload_map.port_id[i];

  if (port_idx < 0) {
   dev_err(dev, "Invalid port_id 0x%x\n",
    payload_map.port_id[i]);
   kfree(pkt);
   return -EINVAL;
  }
  copp_idx = payload_map.copp_idx[i];

  copp = q6adm_find_copp(adm, port_idx, copp_idx);
  if (!copp) {
   kfree(pkt);
   return -EINVAL;
  }

  copps_list[i] = copp->id;
  kref_put(&copp->refcount, q6adm_free_copp);
 }

 mutex_lock(&adm->lock);
 adm->result.status = 0;
 adm->result.opcode = 0;

 ret = apr_send_pkt(adm->apr, pkt);
 if (ret < 0) {
  dev_err(dev, "routing for stream %d failed ret %d\n",
         payload_map.session_id, ret);
  goto fail_cmd;
 }
 ret = wait_event_timeout(adm->matrix_map_wait,
     adm->result.opcode == pkt->hdr.opcode,
     msecs_to_jiffies(TIMEOUT_MS));
 if (!ret) {
  dev_err(dev, "routing for stream %d failed\n",
         payload_map.session_id);
  ret = -ETIMEDOUT;
  goto fail_cmd;
 } else if (adm->result.status > 0) {
  dev_err(dev, "DSP returned error[%d]\n",
   adm->result.status);
  ret = -EINVAL;
  goto fail_cmd;
 }

fail_cmd:
 mutex_unlock(&adm->lock);
 kfree(pkt);
 return ret;
}
