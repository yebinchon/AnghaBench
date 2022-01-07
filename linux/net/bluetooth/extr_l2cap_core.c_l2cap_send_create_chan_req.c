
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_create_chan_req {int amp_id; int psm; int scid; } ;
struct l2cap_chan {int ident; int conn; int psm; int scid; } ;
typedef int req ;


 int L2CAP_CREATE_CHAN_REQ ;
 int cpu_to_le16 (int ) ;
 int l2cap_get_ident (int ) ;
 int l2cap_send_cmd (int ,int ,int ,int,struct l2cap_create_chan_req*) ;

__attribute__((used)) static void l2cap_send_create_chan_req(struct l2cap_chan *chan, u8 amp_id)
{
 struct l2cap_create_chan_req req;
 req.scid = cpu_to_le16(chan->scid);
 req.psm = chan->psm;
 req.amp_id = amp_id;

 chan->ident = l2cap_get_ident(chan->conn);

 l2cap_send_cmd(chan->conn, chan->ident, L2CAP_CREATE_CHAN_REQ,
         sizeof(req), &req);
}
