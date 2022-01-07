
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_move_chan_rsp {void* result; void* icid; } ;
struct l2cap_chan {int ident; int conn; int dcid; } ;
typedef int rsp ;


 int BT_DBG (char*,struct l2cap_chan*,int ) ;
 int L2CAP_MOVE_CHAN_RSP ;
 void* cpu_to_le16 (int ) ;
 int l2cap_send_cmd (int ,int ,int ,int,struct l2cap_move_chan_rsp*) ;

__attribute__((used)) static void l2cap_send_move_chan_rsp(struct l2cap_chan *chan, u16 result)
{
 struct l2cap_move_chan_rsp rsp;

 BT_DBG("chan %p, result 0x%4.4x", chan, result);

 rsp.icid = cpu_to_le16(chan->dcid);
 rsp.result = cpu_to_le16(result);

 l2cap_send_cmd(chan->conn, chan->ident, L2CAP_MOVE_CHAN_RSP,
         sizeof(rsp), &rsp);
}
