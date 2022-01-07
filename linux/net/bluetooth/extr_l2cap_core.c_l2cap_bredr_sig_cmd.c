
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int code; int ident; } ;


 int BT_ERR (char*,int) ;
 int EINVAL ;
 int l2cap_command_rej (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_config_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_config_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_connect_create_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_connect_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_create_channel_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_disconnect_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_disconnect_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_information_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_information_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_move_channel_confirm (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_move_channel_confirm_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_move_channel_req (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_move_channel_rsp (struct l2cap_conn*,struct l2cap_cmd_hdr*,int ,int *) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int,int ,int *) ;

__attribute__((used)) static inline int l2cap_bredr_sig_cmd(struct l2cap_conn *conn,
          struct l2cap_cmd_hdr *cmd, u16 cmd_len,
          u8 *data)
{
 int err = 0;

 switch (cmd->code) {
 case 144:
  l2cap_command_rej(conn, cmd, cmd_len, data);
  break;

 case 141:
  err = l2cap_connect_req(conn, cmd, cmd_len, data);
  break;

 case 140:
 case 138:
  l2cap_connect_create_rsp(conn, cmd, cmd_len, data);
  break;

 case 143:
  err = l2cap_config_req(conn, cmd, cmd_len, data);
  break;

 case 142:
  l2cap_config_rsp(conn, cmd, cmd_len, data);
  break;

 case 137:
  err = l2cap_disconnect_req(conn, cmd, cmd_len, data);
  break;

 case 136:
  l2cap_disconnect_rsp(conn, cmd, cmd_len, data);
  break;

 case 135:
  l2cap_send_cmd(conn, cmd->ident, 134, cmd_len, data);
  break;

 case 134:
  break;

 case 133:
  err = l2cap_information_req(conn, cmd, cmd_len, data);
  break;

 case 132:
  l2cap_information_rsp(conn, cmd, cmd_len, data);
  break;

 case 139:
  err = l2cap_create_channel_req(conn, cmd, cmd_len, data);
  break;

 case 129:
  err = l2cap_move_channel_req(conn, cmd, cmd_len, data);
  break;

 case 128:
  l2cap_move_channel_rsp(conn, cmd, cmd_len, data);
  break;

 case 131:
  err = l2cap_move_channel_confirm(conn, cmd, cmd_len, data);
  break;

 case 130:
  l2cap_move_channel_confirm_rsp(conn, cmd, cmd_len, data);
  break;

 default:
  BT_ERR("Unknown BR/EDR signaling command 0x%2.2x", cmd->code);
  err = -EINVAL;
  break;
 }

 return err;
}
