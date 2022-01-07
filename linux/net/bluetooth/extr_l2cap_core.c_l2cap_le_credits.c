
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct l2cap_le_credits {int credits; int cid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int dummy; } ;
struct l2cap_chan {int tx_credits; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* resume ) (struct l2cap_chan*) ;} ;


 int BT_DBG (char*,int,int) ;
 int BT_ERR (char*) ;
 int EBADSLT ;
 int ECONNRESET ;
 int EPROTO ;
 int LE_FLOWCTL_MAX_CREDITS ;
 int __le16_to_cpu (int ) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 struct l2cap_chan* l2cap_get_chan_by_dcid (struct l2cap_conn*,int) ;
 int l2cap_le_flowctl_send (struct l2cap_chan*) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int ) ;
 int stub1 (struct l2cap_chan*) ;

__attribute__((used)) static inline int l2cap_le_credits(struct l2cap_conn *conn,
       struct l2cap_cmd_hdr *cmd, u16 cmd_len,
       u8 *data)
{
 struct l2cap_le_credits *pkt;
 struct l2cap_chan *chan;
 u16 cid, credits, max_credits;

 if (cmd_len != sizeof(*pkt))
  return -EPROTO;

 pkt = (struct l2cap_le_credits *) data;
 cid = __le16_to_cpu(pkt->cid);
 credits = __le16_to_cpu(pkt->credits);

 BT_DBG("cid 0x%4.4x credits 0x%4.4x", cid, credits);

 chan = l2cap_get_chan_by_dcid(conn, cid);
 if (!chan)
  return -EBADSLT;

 max_credits = LE_FLOWCTL_MAX_CREDITS - chan->tx_credits;
 if (credits > max_credits) {
  BT_ERR("LE credits overflow");
  l2cap_send_disconn_req(chan, ECONNRESET);
  l2cap_chan_unlock(chan);




  return 0;
 }

 chan->tx_credits += credits;


 l2cap_le_flowctl_send(chan);

 if (chan->tx_credits)
  chan->ops->resume(chan);

 l2cap_chan_unlock(chan);

 return 0;
}
