
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_move_chan_cfm {void* result; void* icid; } ;
struct l2cap_conn {int dummy; } ;
typedef int cfm ;


 int BT_DBG (char*,struct l2cap_conn*,int ) ;
 int L2CAP_MC_UNCONFIRMED ;
 int L2CAP_MOVE_CHAN_CFM ;
 void* cpu_to_le16 (int ) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_move_chan_cfm*) ;

__attribute__((used)) static void l2cap_send_move_chan_cfm_icid(struct l2cap_conn *conn, u16 icid)
{
 struct l2cap_move_chan_cfm cfm;

 BT_DBG("conn %p, icid 0x%4.4x", conn, icid);

 cfm.icid = cpu_to_le16(icid);
 cfm.result = cpu_to_le16(L2CAP_MC_UNCONFIRMED);

 l2cap_send_cmd(conn, l2cap_get_ident(conn), L2CAP_MOVE_CHAN_CFM,
         sizeof(cfm), &cfm);
}
