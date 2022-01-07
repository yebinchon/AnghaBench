
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lowpan_peer {int chan; } ;
struct l2cap_conn {int chan; } ;


 int BT_DBG (char*,struct lowpan_peer*,int ) ;
 int ENOENT ;
 int l2cap_chan_close (int ,int) ;
 struct lowpan_peer* lookup_peer (struct lowpan_peer*) ;

__attribute__((used)) static int bt_6lowpan_disconnect(struct l2cap_conn *conn, u8 dst_type)
{
 struct lowpan_peer *peer;

 BT_DBG("conn %p dst type %d", conn, dst_type);

 peer = lookup_peer(conn);
 if (!peer)
  return -ENOENT;

 BT_DBG("peer %p chan %p", peer, peer->chan);

 l2cap_chan_close(peer->chan, ENOENT);

 return 0;
}
