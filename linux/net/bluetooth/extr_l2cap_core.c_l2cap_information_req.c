
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_info_rsp {int* data; void* result; void* type; } ;
typedef struct l2cap_info_rsp u8 ;
typedef int u32 ;
typedef int u16 ;
struct l2cap_info_req {int type; } ;
struct l2cap_conn {int local_fixed_chan; } ;
struct l2cap_cmd_hdr {int ident; } ;
typedef int rsp ;
typedef int buf ;


 int BT_DBG (char*,int) ;
 int EPROTO ;
 int L2CAP_FC_A2MP ;
 int L2CAP_FEAT_ERTM ;
 int L2CAP_FEAT_EXT_FLOW ;
 int L2CAP_FEAT_EXT_WINDOW ;
 int L2CAP_FEAT_FCS ;
 int L2CAP_FEAT_STREAMING ;
 int L2CAP_INFO_RSP ;
 int L2CAP_IR_NOTSUPP ;
 int L2CAP_IR_SUCCESS ;
 int L2CAP_IT_FEAT_MASK ;
 int L2CAP_IT_FIXED_CHAN ;
 int __le16_to_cpu (int ) ;
 void* cpu_to_le16 (int) ;
 int disable_ertm ;
 int l2cap_feat_mask ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_info_rsp*) ;
 int memset (int*,int ,int) ;
 int put_unaligned_le32 (int,int*) ;

__attribute__((used)) static inline int l2cap_information_req(struct l2cap_conn *conn,
     struct l2cap_cmd_hdr *cmd, u16 cmd_len,
     u8 *data)
{
 struct l2cap_info_req *req = (struct l2cap_info_req *) data;
 u16 type;

 if (cmd_len != sizeof(*req))
  return -EPROTO;

 type = __le16_to_cpu(req->type);

 BT_DBG("type 0x%4.4x", type);

 if (type == L2CAP_IT_FEAT_MASK) {
  u8 buf[8];
  u32 feat_mask = l2cap_feat_mask;
  struct l2cap_info_rsp *rsp = (struct l2cap_info_rsp *) buf;
  rsp->type = cpu_to_le16(L2CAP_IT_FEAT_MASK);
  rsp->result = cpu_to_le16(L2CAP_IR_SUCCESS);
  if (!disable_ertm)
   feat_mask |= L2CAP_FEAT_ERTM | L2CAP_FEAT_STREAMING
    | L2CAP_FEAT_FCS;
  if (conn->local_fixed_chan & L2CAP_FC_A2MP)
   feat_mask |= L2CAP_FEAT_EXT_FLOW
    | L2CAP_FEAT_EXT_WINDOW;

  put_unaligned_le32(feat_mask, rsp->data);
  l2cap_send_cmd(conn, cmd->ident, L2CAP_INFO_RSP, sizeof(buf),
          buf);
 } else if (type == L2CAP_IT_FIXED_CHAN) {
  u8 buf[12];
  struct l2cap_info_rsp *rsp = (struct l2cap_info_rsp *) buf;

  rsp->type = cpu_to_le16(L2CAP_IT_FIXED_CHAN);
  rsp->result = cpu_to_le16(L2CAP_IR_SUCCESS);
  rsp->data[0] = conn->local_fixed_chan;
  memset(rsp->data + 1, 0, 7);
  l2cap_send_cmd(conn, cmd->ident, L2CAP_INFO_RSP, sizeof(buf),
          buf);
 } else {
  struct l2cap_info_rsp rsp;
  rsp.type = cpu_to_le16(type);
  rsp.result = cpu_to_le16(L2CAP_IR_NOTSUPP);
  l2cap_send_cmd(conn, cmd->ident, L2CAP_INFO_RSP, sizeof(rsp),
          &rsp);
 }

 return 0;
}
