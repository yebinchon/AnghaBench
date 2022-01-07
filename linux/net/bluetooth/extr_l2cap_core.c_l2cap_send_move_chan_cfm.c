
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_move_chan_cfm {void* result; void* icid; } ;
struct l2cap_chan {int ident; int conn; int scid; } ;
typedef int cfm ;


 int BT_DBG (char*,struct l2cap_chan*,int ) ;
 int L2CAP_MOVE_CHAN_CFM ;
 int L2CAP_MOVE_TIMEOUT ;
 int __set_chan_timer (struct l2cap_chan*,int ) ;
 void* cpu_to_le16 (int ) ;
 int l2cap_get_ident (int ) ;
 int l2cap_send_cmd (int ,int ,int ,int,struct l2cap_move_chan_cfm*) ;

__attribute__((used)) static void l2cap_send_move_chan_cfm(struct l2cap_chan *chan, u16 result)
{
 struct l2cap_move_chan_cfm cfm;

 BT_DBG("chan %p, result 0x%4.4x", chan, result);

 chan->ident = l2cap_get_ident(chan->conn);

 cfm.icid = cpu_to_le16(chan->scid);
 cfm.result = cpu_to_le16(result);

 l2cap_send_cmd(chan->conn, chan->ident, L2CAP_MOVE_CHAN_CFM,
         sizeof(cfm), &cfm);

 __set_chan_timer(chan, L2CAP_MOVE_TIMEOUT);
}
