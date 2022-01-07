
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_info_rsp {int * data; int result; int type; } ;
struct l2cap_info_req {int type; } ;
struct l2cap_conn {scalar_t__ info_ident; int info_state; int feat_mask; int remote_fixed_chan; int info_timer; } ;
struct l2cap_cmd_hdr {scalar_t__ ident; } ;
typedef int req ;


 int BT_DBG (char*,int,int) ;
 int EPROTO ;
 int L2CAP_FEAT_FIXED_CHAN ;
 int L2CAP_INFO_FEAT_MASK_REQ_DONE ;
 int L2CAP_INFO_REQ ;
 int L2CAP_IR_SUCCESS ;


 int __le16_to_cpu (int ) ;
 int cancel_delayed_work (int *) ;
 int cpu_to_le16 (int) ;
 int get_unaligned_le32 (int *) ;
 int l2cap_conn_start (struct l2cap_conn*) ;
 scalar_t__ l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_send_cmd (struct l2cap_conn*,scalar_t__,int ,int,struct l2cap_info_req*) ;

__attribute__((used)) static inline int l2cap_information_rsp(struct l2cap_conn *conn,
     struct l2cap_cmd_hdr *cmd, u16 cmd_len,
     u8 *data)
{
 struct l2cap_info_rsp *rsp = (struct l2cap_info_rsp *) data;
 u16 type, result;

 if (cmd_len < sizeof(*rsp))
  return -EPROTO;

 type = __le16_to_cpu(rsp->type);
 result = __le16_to_cpu(rsp->result);

 BT_DBG("type 0x%4.4x result 0x%2.2x", type, result);


 if (cmd->ident != conn->info_ident ||
     conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_DONE)
  return 0;

 cancel_delayed_work(&conn->info_timer);

 if (result != L2CAP_IR_SUCCESS) {
  conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
  conn->info_ident = 0;

  l2cap_conn_start(conn);

  return 0;
 }

 switch (type) {
 case 129:
  conn->feat_mask = get_unaligned_le32(rsp->data);

  if (conn->feat_mask & L2CAP_FEAT_FIXED_CHAN) {
   struct l2cap_info_req req;
   req.type = cpu_to_le16(128);

   conn->info_ident = l2cap_get_ident(conn);

   l2cap_send_cmd(conn, conn->info_ident,
           L2CAP_INFO_REQ, sizeof(req), &req);
  } else {
   conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
   conn->info_ident = 0;

   l2cap_conn_start(conn);
  }
  break;

 case 128:
  conn->remote_fixed_chan = rsp->data[0];
  conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
  conn->info_ident = 0;

  l2cap_conn_start(conn);
  break;
 }

 return 0;
}
