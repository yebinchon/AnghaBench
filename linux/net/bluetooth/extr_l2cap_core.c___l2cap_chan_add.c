
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_conn {int chan_l; TYPE_1__* hcon; int disc_reason; } ;
struct l2cap_chan {int chan_type; int list; int flags; int local_flush_to; int local_acc_lat; int local_sdu_itime; int local_msdu; int local_stype; int local_id; void* omtu; void* dcid; void* scid; struct l2cap_conn* conn; int psm; } ;
struct TYPE_2__ {int type; } ;


 int ACL_LINK ;
 int BT_DBG (char*,struct l2cap_conn*,int ,void*) ;
 int FLAG_HOLD_HCI_CONN ;
 int HCI_ERROR_REMOTE_USER_TERM ;
 int L2CAP_BESTEFFORT_ID ;



 void* L2CAP_CID_CONN_LESS ;
 void* L2CAP_CID_SIGNALING ;
 int L2CAP_DEFAULT_ACC_LAT ;
 int L2CAP_DEFAULT_MAX_SDU_SIZE ;
 void* L2CAP_DEFAULT_MTU ;
 int L2CAP_DEFAULT_SDU_ITIME ;
 int L2CAP_EFS_DEFAULT_FLUSH_TO ;
 int L2CAP_SERV_BESTEFFORT ;
 int __le16_to_cpu (int ) ;
 int hci_conn_hold (TYPE_1__*) ;
 void* l2cap_alloc_cid (struct l2cap_conn*) ;
 int l2cap_chan_hold (struct l2cap_chan*) ;
 int list_add (int *,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void __l2cap_chan_add(struct l2cap_conn *conn, struct l2cap_chan *chan)
{
 BT_DBG("conn %p, psm 0x%2.2x, dcid 0x%4.4x", conn,
        __le16_to_cpu(chan->psm), chan->dcid);

 conn->disc_reason = HCI_ERROR_REMOTE_USER_TERM;

 chan->conn = conn;

 switch (chan->chan_type) {
 case 129:

  chan->scid = l2cap_alloc_cid(conn);
  if (conn->hcon->type == ACL_LINK)
   chan->omtu = L2CAP_DEFAULT_MTU;
  break;

 case 130:

  chan->scid = L2CAP_CID_CONN_LESS;
  chan->dcid = L2CAP_CID_CONN_LESS;
  chan->omtu = L2CAP_DEFAULT_MTU;
  break;

 case 128:

  break;

 default:

  chan->scid = L2CAP_CID_SIGNALING;
  chan->dcid = L2CAP_CID_SIGNALING;
  chan->omtu = L2CAP_DEFAULT_MTU;
 }

 chan->local_id = L2CAP_BESTEFFORT_ID;
 chan->local_stype = L2CAP_SERV_BESTEFFORT;
 chan->local_msdu = L2CAP_DEFAULT_MAX_SDU_SIZE;
 chan->local_sdu_itime = L2CAP_DEFAULT_SDU_ITIME;
 chan->local_acc_lat = L2CAP_DEFAULT_ACC_LAT;
 chan->local_flush_to = L2CAP_EFS_DEFAULT_FLUSH_TO;

 l2cap_chan_hold(chan);


 if (chan->chan_type != 128 ||
     test_bit(FLAG_HOLD_HCI_CONN, &chan->flags))
  hci_conn_hold(conn->hcon);

 list_add(&chan->list, &conn->chan_l);
}
