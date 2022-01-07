
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_rej_cid {void* dcid; void* scid; int reason; } ;
typedef int rej ;


 int L2CAP_COMMAND_REJ ;
 int L2CAP_REJ_INVALID_CID ;
 void* __cpu_to_le16 (int ) ;
 int cpu_to_le16 (int ) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_cmd_rej_cid*) ;

__attribute__((used)) static void cmd_reject_invalid_cid(struct l2cap_conn *conn, u8 ident,
       u16 scid, u16 dcid)
{
 struct l2cap_cmd_rej_cid rej;

 rej.reason = cpu_to_le16(L2CAP_REJ_INVALID_CID);
 rej.scid = __cpu_to_le16(scid);
 rej.dcid = __cpu_to_le16(dcid);

 l2cap_send_cmd(conn, ident, L2CAP_COMMAND_REJ, sizeof(rej), &rej);
}
