
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {scalar_t__ dst_type; int src_type; int dst; int src; TYPE_1__* ops; int scid; } ;
struct hci_dev {int blacklist; } ;
struct hci_conn {scalar_t__ type; int dst; int src; struct hci_dev* hdev; } ;
struct TYPE_2__ {struct l2cap_chan* (* new_connection ) (struct l2cap_chan*) ;} ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,struct hci_conn*,int *,scalar_t__) ;
 scalar_t__ LE_LINK ;
 int __l2cap_chan_add (struct l2cap_conn*,struct l2cap_chan*) ;
 scalar_t__ __l2cap_get_chan_by_dcid (struct l2cap_conn*,int ) ;
 int bacpy (int *,int *) ;
 scalar_t__ bdaddr_dst_type (struct hci_conn*) ;
 int bdaddr_src_type (struct hci_conn*) ;
 int bt_to_errno (scalar_t__) ;
 scalar_t__ hci_bdaddr_list_lookup (int *,int *,scalar_t__) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_put (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 struct l2cap_conn* l2cap_conn_add (struct hci_conn*) ;
 int l2cap_conn_del (struct hci_conn*,int ) ;
 int l2cap_conn_ready (struct l2cap_conn*) ;
 struct l2cap_chan* l2cap_global_fixed_chan (struct l2cap_chan*,struct hci_conn*) ;
 struct l2cap_chan* stub1 (struct l2cap_chan*) ;

__attribute__((used)) static void l2cap_connect_cfm(struct hci_conn *hcon, u8 status)
{
 struct hci_dev *hdev = hcon->hdev;
 struct l2cap_conn *conn;
 struct l2cap_chan *pchan;
 u8 dst_type;

 if (hcon->type != ACL_LINK && hcon->type != LE_LINK)
  return;

 BT_DBG("hcon %p bdaddr %pMR status %d", hcon, &hcon->dst, status);

 if (status) {
  l2cap_conn_del(hcon, bt_to_errno(status));
  return;
 }

 conn = l2cap_conn_add(hcon);
 if (!conn)
  return;

 dst_type = bdaddr_dst_type(hcon);


 if (hci_bdaddr_list_lookup(&hdev->blacklist, &hcon->dst, dst_type))
  return;






 pchan = l2cap_global_fixed_chan(((void*)0), hcon);
 while (pchan) {
  struct l2cap_chan *chan, *next;


  if (__l2cap_get_chan_by_dcid(conn, pchan->scid))
   goto next;

  l2cap_chan_lock(pchan);
  chan = pchan->ops->new_connection(pchan);
  if (chan) {
   bacpy(&chan->src, &hcon->src);
   bacpy(&chan->dst, &hcon->dst);
   chan->src_type = bdaddr_src_type(hcon);
   chan->dst_type = dst_type;

   __l2cap_chan_add(conn, chan);
  }

  l2cap_chan_unlock(pchan);
next:
  next = l2cap_global_fixed_chan(pchan, hcon);
  l2cap_chan_put(pchan);
  pchan = next;
 }

 l2cap_conn_ready(conn);
}
