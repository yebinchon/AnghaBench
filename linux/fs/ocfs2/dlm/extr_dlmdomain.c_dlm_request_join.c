
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int pv_minor; int pv_major; } ;
struct TYPE_3__ {int pv_minor; int pv_major; } ;
struct dlm_query_join_request {int node_map; TYPE_2__ fs_proto; TYPE_1__ dlm_proto; int name_len; int domain; int node_idx; } ;
struct dlm_query_join_packet {int code; int fs_minor; int dlm_minor; } ;
struct dlm_ctxt {TYPE_2__ fs_locking_proto; TYPE_1__ dlm_locking_proto; int live_nodes_map; int name; int node_num; } ;
typedef int join_msg ;
typedef enum dlm_query_join_response_code { ____Placeholder_dlm_query_join_response_code } dlm_query_join_response_code ;


 int DLM_MOD_KEY ;
 int DLM_QUERY_JOIN_MSG ;
 int EINVAL ;
 int ENOPROTOOPT ;
 int EPROTO ;




 int ML_ERROR ;
 int ML_NOTICE ;
 int O2NM_MAX_NODES ;
 int byte_copymap (int ,int ,int ) ;
 int dlm_query_join_wire_to_packet (int ,struct dlm_query_join_packet*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct dlm_query_join_request*,int ,int) ;
 int mlog (int ,char*,int,...) ;
 int o2net_send_message (int ,int ,struct dlm_query_join_request*,int,int,int *) ;
 int strlen (int ) ;

__attribute__((used)) static int dlm_request_join(struct dlm_ctxt *dlm,
       int node,
       enum dlm_query_join_response_code *response)
{
 int status;
 struct dlm_query_join_request join_msg;
 struct dlm_query_join_packet packet;
 u32 join_resp;

 mlog(0, "querying node %d\n", node);

 memset(&join_msg, 0, sizeof(join_msg));
 join_msg.node_idx = dlm->node_num;
 join_msg.name_len = strlen(dlm->name);
 memcpy(join_msg.domain, dlm->name, join_msg.name_len);
 join_msg.dlm_proto = dlm->dlm_locking_proto;
 join_msg.fs_proto = dlm->fs_locking_proto;


 byte_copymap(join_msg.node_map, dlm->live_nodes_map, O2NM_MAX_NODES);

 status = o2net_send_message(DLM_QUERY_JOIN_MSG, DLM_MOD_KEY, &join_msg,
        sizeof(join_msg), node, &join_resp);
 if (status < 0 && status != -ENOPROTOOPT) {
  mlog(ML_ERROR, "Error %d when sending message %u (key 0x%x) to "
       "node %u\n", status, DLM_QUERY_JOIN_MSG, DLM_MOD_KEY,
       node);
  goto bail;
 }
 dlm_query_join_wire_to_packet(join_resp, &packet);





 if (status == -ENOPROTOOPT) {
  status = 0;
  *response = 129;
 } else {
  *response = packet.code;
  switch (packet.code) {
  case 131:
  case 129:
   break;
  case 128:
   mlog(ML_NOTICE,
        "This node requested DLM locking protocol %u.%u and "
        "filesystem locking protocol %u.%u.  At least one of "
        "the protocol versions on node %d is not compatible, "
        "disconnecting\n",
        dlm->dlm_locking_proto.pv_major,
        dlm->dlm_locking_proto.pv_minor,
        dlm->fs_locking_proto.pv_major,
        dlm->fs_locking_proto.pv_minor,
        node);
   status = -EPROTO;
   break;
  case 130:

   dlm->dlm_locking_proto.pv_minor = packet.dlm_minor;
   dlm->fs_locking_proto.pv_minor = packet.fs_minor;
   mlog(0,
        "Node %d responds JOIN_OK with DLM locking protocol "
        "%u.%u and fs locking protocol %u.%u\n",
        node,
        dlm->dlm_locking_proto.pv_major,
        dlm->dlm_locking_proto.pv_minor,
        dlm->fs_locking_proto.pv_major,
        dlm->fs_locking_proto.pv_minor);
   break;
  default:
   status = -EINVAL;
   mlog(ML_ERROR, "invalid response %d from node %u\n",
        packet.code, node);

   *response = 131;
   break;
  }
 }

 mlog(0, "status %d, node %d response is %d\n", status, node,
      *response);

bail:
 return status;
}
