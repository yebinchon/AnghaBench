
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct l2cap_disconn_rsp {int dcid; int scid; } ;
struct l2cap_conn {int chan_lock; } ;
struct l2cap_cmd_hdr {int dummy; } ;
struct l2cap_chan {scalar_t__ state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* close ) (struct l2cap_chan*) ;} ;


 int BT_DBG (char*,int,int) ;
 scalar_t__ BT_DISCONN ;
 int EPROTO ;
 struct l2cap_chan* __l2cap_get_chan_by_scid (struct l2cap_conn*,int) ;
 int __le16_to_cpu (int ) ;
 int l2cap_chan_del (struct l2cap_chan*,int ) ;
 int l2cap_chan_hold (struct l2cap_chan*) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_put (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct l2cap_chan*) ;

__attribute__((used)) static inline int l2cap_disconnect_rsp(struct l2cap_conn *conn,
           struct l2cap_cmd_hdr *cmd, u16 cmd_len,
           u8 *data)
{
 struct l2cap_disconn_rsp *rsp = (struct l2cap_disconn_rsp *) data;
 u16 dcid, scid;
 struct l2cap_chan *chan;

 if (cmd_len != sizeof(*rsp))
  return -EPROTO;

 scid = __le16_to_cpu(rsp->scid);
 dcid = __le16_to_cpu(rsp->dcid);

 BT_DBG("dcid 0x%4.4x scid 0x%4.4x", dcid, scid);

 mutex_lock(&conn->chan_lock);

 chan = __l2cap_get_chan_by_scid(conn, scid);
 if (!chan) {
  mutex_unlock(&conn->chan_lock);
  return 0;
 }

 l2cap_chan_lock(chan);

 if (chan->state != BT_DISCONN) {
  l2cap_chan_unlock(chan);
  mutex_unlock(&conn->chan_lock);
  return 0;
 }

 l2cap_chan_hold(chan);
 l2cap_chan_del(chan, 0);

 l2cap_chan_unlock(chan);

 chan->ops->close(chan);
 l2cap_chan_put(chan);

 mutex_unlock(&conn->chan_lock);

 return 0;
}
