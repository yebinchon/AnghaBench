
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_conn {TYPE_1__* hcon; } ;
struct l2cap_chan {struct l2cap_conn* conn; } ;
struct amp_mgr {struct l2cap_chan* bredr_chan; } ;
struct a2mp_discov_req {scalar_t__ ext_feat; int mtu; } ;
typedef int req ;
struct TYPE_2__ {struct amp_mgr* amp_mgr; } ;


 int A2MP_DISCOVER_REQ ;
 int BT_DBG (char*,struct l2cap_chan*,struct l2cap_conn*,struct amp_mgr*) ;
 int L2CAP_A2MP_DEFAULT_MTU ;
 int a2mp_send (struct amp_mgr*,int ,int,int,struct a2mp_discov_req*) ;
 struct amp_mgr* amp_mgr_create (struct l2cap_conn*,int) ;
 int cpu_to_le16 (int ) ;

void a2mp_discover_amp(struct l2cap_chan *chan)
{
 struct l2cap_conn *conn = chan->conn;
 struct amp_mgr *mgr = conn->hcon->amp_mgr;
 struct a2mp_discov_req req;

 BT_DBG("chan %p conn %p mgr %p", chan, conn, mgr);

 if (!mgr) {
  mgr = amp_mgr_create(conn, 1);
  if (!mgr)
   return;
 }

 mgr->bredr_chan = chan;

 req.mtu = cpu_to_le16(L2CAP_A2MP_DEFAULT_MTU);
 req.ext_feat = 0;
 a2mp_send(mgr, A2MP_DISCOVER_REQ, 1, sizeof(req), &req);
}
