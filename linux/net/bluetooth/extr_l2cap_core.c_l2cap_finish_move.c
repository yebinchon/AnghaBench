
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct l2cap_chan {TYPE_4__* conn; TYPE_3__* hs_hcon; int rx_state; } ;
struct TYPE_10__ {int acl_mtu; } ;
struct TYPE_9__ {TYPE_1__* hcon; int mtu; } ;
struct TYPE_8__ {TYPE_2__* hdev; } ;
struct TYPE_7__ {int block_mtu; } ;
struct TYPE_6__ {TYPE_5__* hdev; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int L2CAP_RX_STATE_RECV ;
 int l2cap_resegment (struct l2cap_chan*) ;

__attribute__((used)) static int l2cap_finish_move(struct l2cap_chan *chan)
{
 BT_DBG("chan %p", chan);

 chan->rx_state = L2CAP_RX_STATE_RECV;

 if (chan->hs_hcon)
  chan->conn->mtu = chan->hs_hcon->hdev->block_mtu;
 else
  chan->conn->mtu = chan->conn->hcon->hdev->acl_mtu;

 return l2cap_resegment(chan);
}
