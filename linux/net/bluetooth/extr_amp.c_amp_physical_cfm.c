
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct l2cap_chan {TYPE_1__* conn; struct hci_conn* hs_hcon; int local_amp_id; int remote_amp_id; int flags; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {TYPE_2__* hdev; int remote_id; struct amp_mgr* amp_mgr; } ;
struct amp_mgr {struct l2cap_chan* bredr_chan; } ;
struct TYPE_4__ {int block_mtu; int id; } ;
struct TYPE_3__ {int mtu; } ;


 int BT_DBG (char*,struct hci_conn*,struct hci_conn*,struct amp_mgr*) ;
 int FLAG_EFS_ENABLE ;
 int __l2cap_physical_cfm (struct l2cap_chan*,int ) ;
 struct hci_dev* hci_dev_hold (TYPE_2__*) ;
 int hci_dev_put (struct hci_dev*) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int set_bit (int ,int *) ;

void amp_physical_cfm(struct hci_conn *bredr_hcon, struct hci_conn *hs_hcon)
{
 struct hci_dev *bredr_hdev = hci_dev_hold(bredr_hcon->hdev);
 struct amp_mgr *mgr = hs_hcon->amp_mgr;
 struct l2cap_chan *bredr_chan;

 BT_DBG("bredr_hcon %p hs_hcon %p mgr %p", bredr_hcon, hs_hcon, mgr);

 if (!bredr_hdev || !mgr || !mgr->bredr_chan)
  return;

 bredr_chan = mgr->bredr_chan;

 l2cap_chan_lock(bredr_chan);

 set_bit(FLAG_EFS_ENABLE, &bredr_chan->flags);
 bredr_chan->remote_amp_id = hs_hcon->remote_id;
 bredr_chan->local_amp_id = hs_hcon->hdev->id;
 bredr_chan->hs_hcon = hs_hcon;
 bredr_chan->conn->mtu = hs_hcon->hdev->block_mtu;

 __l2cap_physical_cfm(bredr_chan, 0);

 l2cap_chan_unlock(bredr_chan);

 hci_dev_put(bredr_hdev);
}
