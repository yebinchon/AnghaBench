
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_move_chan_cfm_rsp {int icid; } ;
struct l2cap_conn {int dummy; } ;
typedef int rsp ;


 int BT_DBG (char*,int ) ;
 int L2CAP_MOVE_CHAN_CFM_RSP ;
 int cpu_to_le16 (int ) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_move_chan_cfm_rsp*) ;

__attribute__((used)) static void l2cap_send_move_chan_cfm_rsp(struct l2cap_conn *conn, u8 ident,
      u16 icid)
{
 struct l2cap_move_chan_cfm_rsp rsp;

 BT_DBG("icid 0x%4.4x", icid);

 rsp.icid = cpu_to_le16(icid);
 l2cap_send_cmd(conn, ident, L2CAP_MOVE_CHAN_CFM_RSP, sizeof(rsp), &rsp);
}
