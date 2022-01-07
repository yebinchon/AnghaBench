
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int code; } ;


 int BT_ERR (char*,int) ;
 int EINVAL ;
 int l2cap_conn_param_update_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_disconnect_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_disconnect_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_le_command_rej (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_le_connect_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_le_connect_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_le_credits (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;

__attribute__((used)) static inline int l2cap_le_sig_cmd(struct l2cap_conn *conn,
       struct l2cap_cmd_hdr *cmd, u16 cmd_len,
       u8 *data)
{
 int err = 0;

 switch (cmd->code) {
 case 135:
  l2cap_le_command_rej(conn, cmd, cmd_len, data);
  break;

 case 134:
  err = l2cap_conn_param_update_req(conn, cmd, cmd_len, data);
  break;

 case 133:
  break;

 case 129:
  l2cap_le_connect_rsp(conn, cmd, cmd_len, data);
  break;

 case 130:
  err = l2cap_le_connect_req(conn, cmd, cmd_len, data);
  break;

 case 128:
  err = l2cap_le_credits(conn, cmd, cmd_len, data);
  break;

 case 132:
  err = l2cap_disconnect_req(conn, cmd, cmd_len, data);
  break;

 case 131:
  l2cap_disconnect_rsp(conn, cmd, cmd_len, data);
  break;

 default:
  BT_ERR("Unknown LE signaling command 0x%2.2x", cmd->code);
  err = -EINVAL;
  break;
 }

 return err;
}
