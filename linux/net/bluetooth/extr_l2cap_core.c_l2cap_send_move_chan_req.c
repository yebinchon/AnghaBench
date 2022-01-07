
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct l2cap_move_chan_req {void* dest_amp_id; int icid; } ;
struct l2cap_chan {int conn; int scid; void* ident; } ;
typedef int req ;


 int BT_DBG (char*,struct l2cap_chan*,void*) ;
 int L2CAP_MOVE_CHAN_REQ ;
 int L2CAP_MOVE_TIMEOUT ;
 int __set_chan_timer (struct l2cap_chan*,int ) ;
 int cpu_to_le16 (int ) ;
 void* l2cap_get_ident (int ) ;
 int l2cap_send_cmd (int ,void*,int ,int,struct l2cap_move_chan_req*) ;

__attribute__((used)) static void l2cap_send_move_chan_req(struct l2cap_chan *chan, u8 dest_amp_id)
{
 struct l2cap_move_chan_req req;
 u8 ident;

 BT_DBG("chan %p, dest_amp_id %d", chan, dest_amp_id);

 ident = l2cap_get_ident(chan->conn);
 chan->ident = ident;

 req.icid = cpu_to_le16(chan->scid);
 req.dest_amp_id = dest_amp_id;

 l2cap_send_cmd(chan->conn, ident, L2CAP_MOVE_CHAN_REQ, sizeof(req),
         &req);

 __set_chan_timer(chan, L2CAP_MOVE_TIMEOUT);
}
