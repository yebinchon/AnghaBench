
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_move_chan_rsp {int result; int icid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int ident; } ;


 int BT_DBG (char*,int,int) ;
 int EPROTO ;
 int L2CAP_MR_PEND ;
 int L2CAP_MR_SUCCESS ;
 int l2cap_move_continue (struct l2cap_conn*,int,int) ;
 int l2cap_move_fail (struct l2cap_conn*,int ,int,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int l2cap_move_channel_rsp(struct l2cap_conn *conn,
      struct l2cap_cmd_hdr *cmd,
      u16 cmd_len, void *data)
{
 struct l2cap_move_chan_rsp *rsp = data;
 u16 icid, result;

 if (cmd_len != sizeof(*rsp))
  return -EPROTO;

 icid = le16_to_cpu(rsp->icid);
 result = le16_to_cpu(rsp->result);

 BT_DBG("icid 0x%4.4x, result 0x%4.4x", icid, result);

 if (result == L2CAP_MR_SUCCESS || result == L2CAP_MR_PEND)
  l2cap_move_continue(conn, icid, result);
 else
  l2cap_move_fail(conn, cmd->ident, icid, result);

 return 0;
}
