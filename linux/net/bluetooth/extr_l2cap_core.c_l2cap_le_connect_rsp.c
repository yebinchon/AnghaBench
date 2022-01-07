
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_le_conn_rsp {int result; int credits; int mps; int mtu; int dcid; } ;
struct l2cap_conn {int chan_lock; struct hci_conn* hcon; } ;
struct l2cap_cmd_hdr {int ident; } ;
struct l2cap_chan {int dcid; int omtu; int remote_mps; int tx_credits; int sec_level; int flags; int ident; } ;
struct hci_conn {int sec_level; } ;


 int BT_DBG (char*,int,int,int,int,int) ;
 int BT_SECURITY_MEDIUM ;
 int EBADSLT ;
 int ECONNREFUSED ;
 int EPROTO ;
 int FLAG_LE_CONN_REQ_SENT ;
 int L2CAP_CID_DYN_START ;
 int L2CAP_CID_LE_DYN_END ;



 int __l2cap_get_chan_by_dcid (struct l2cap_conn*,int) ;
 struct l2cap_chan* __l2cap_get_chan_by_ident (struct l2cap_conn*,int ) ;
 int __le16_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 int l2cap_chan_del (struct l2cap_chan*,int ) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_ready (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_conn_security (struct hci_conn*,int) ;

__attribute__((used)) static int l2cap_le_connect_rsp(struct l2cap_conn *conn,
    struct l2cap_cmd_hdr *cmd, u16 cmd_len,
    u8 *data)
{
 struct l2cap_le_conn_rsp *rsp = (struct l2cap_le_conn_rsp *) data;
 struct hci_conn *hcon = conn->hcon;
 u16 dcid, mtu, mps, credits, result;
 struct l2cap_chan *chan;
 int err, sec_level;

 if (cmd_len < sizeof(*rsp))
  return -EPROTO;

 dcid = __le16_to_cpu(rsp->dcid);
 mtu = __le16_to_cpu(rsp->mtu);
 mps = __le16_to_cpu(rsp->mps);
 credits = __le16_to_cpu(rsp->credits);
 result = __le16_to_cpu(rsp->result);

 if (result == 128 && (mtu < 23 || mps < 23 ||
        dcid < L2CAP_CID_DYN_START ||
        dcid > L2CAP_CID_LE_DYN_END))
  return -EPROTO;

 BT_DBG("dcid 0x%4.4x mtu %u mps %u credits %u result 0x%2.2x",
        dcid, mtu, mps, credits, result);

 mutex_lock(&conn->chan_lock);

 chan = __l2cap_get_chan_by_ident(conn, cmd->ident);
 if (!chan) {
  err = -EBADSLT;
  goto unlock;
 }

 err = 0;

 l2cap_chan_lock(chan);

 switch (result) {
 case 128:
  if (__l2cap_get_chan_by_dcid(conn, dcid)) {
   err = -EBADSLT;
   break;
  }

  chan->ident = 0;
  chan->dcid = dcid;
  chan->omtu = mtu;
  chan->remote_mps = mps;
  chan->tx_credits = credits;
  l2cap_chan_ready(chan);
  break;

 case 130:
 case 129:



  if (hcon->sec_level > BT_SECURITY_MEDIUM) {
   l2cap_chan_del(chan, ECONNREFUSED);
   break;
  }

  sec_level = hcon->sec_level + 1;
  if (chan->sec_level < sec_level)
   chan->sec_level = sec_level;


  clear_bit(FLAG_LE_CONN_REQ_SENT, &chan->flags);

  smp_conn_security(hcon, chan->sec_level);
  break;

 default:
  l2cap_chan_del(chan, ECONNREFUSED);
  break;
 }

 l2cap_chan_unlock(chan);

unlock:
 mutex_unlock(&conn->chan_lock);

 return err;
}
