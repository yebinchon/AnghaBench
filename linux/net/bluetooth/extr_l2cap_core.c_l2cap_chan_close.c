
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct l2cap_conn {TYPE_1__* hcon; } ;
struct l2cap_chan {int state; TYPE_2__* ops; int chan_type; struct l2cap_conn* conn; } ;
struct TYPE_4__ {int (* teardown ) (struct l2cap_chan*,int ) ;int (* get_sndtimeo ) (struct l2cap_chan*) ;} ;
struct TYPE_3__ {int type; } ;


 int ACL_LINK ;




 int BT_DBG (char*,struct l2cap_chan*,int ) ;


 int L2CAP_CHAN_CONN_ORIENTED ;
 int LE_LINK ;
 int __set_chan_timer (struct l2cap_chan*,int ) ;
 int l2cap_chan_connect_reject (struct l2cap_chan*) ;
 int l2cap_chan_del (struct l2cap_chan*,int) ;
 int l2cap_chan_le_connect_reject (struct l2cap_chan*) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int) ;
 int state_to_string (int) ;
 int stub1 (struct l2cap_chan*,int ) ;
 int stub2 (struct l2cap_chan*) ;
 int stub3 (struct l2cap_chan*,int ) ;

void l2cap_chan_close(struct l2cap_chan *chan, int reason)
{
 struct l2cap_conn *conn = chan->conn;

 BT_DBG("chan %p state %s", chan, state_to_string(chan->state));

 switch (chan->state) {
 case 128:
  chan->ops->teardown(chan, 0);
  break;

 case 130:
 case 133:
  if (chan->chan_type == L2CAP_CHAN_CONN_ORIENTED) {
   __set_chan_timer(chan, chan->ops->get_sndtimeo(chan));
   l2cap_send_disconn_req(chan, reason);
  } else
   l2cap_chan_del(chan, reason);
  break;

 case 131:
  if (chan->chan_type == L2CAP_CHAN_CONN_ORIENTED) {
   if (conn->hcon->type == ACL_LINK)
    l2cap_chan_connect_reject(chan);
   else if (conn->hcon->type == LE_LINK)
    l2cap_chan_le_connect_reject(chan);
  }

  l2cap_chan_del(chan, reason);
  break;

 case 132:
 case 129:
  l2cap_chan_del(chan, reason);
  break;

 default:
  chan->ops->teardown(chan, 0);
  break;
 }
}
