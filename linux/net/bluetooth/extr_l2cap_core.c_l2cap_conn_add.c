
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct l2cap_conn {int local_fixed_chan; int disc_reason; int id_addr_update_work; int pending_rx_work; int pending_rx; int info_timer; int users; int chan_l; int chan_lock; int ident_lock; scalar_t__ feat_mask; int mtu; struct hci_chan* hchan; int hcon; int ref; } ;
struct hci_conn {int type; TYPE_1__* hdev; struct l2cap_conn* l2cap_data; } ;
struct hci_chan {int dummy; } ;
struct TYPE_3__ {int acl_mtu; int le_mtu; } ;


 int ACL_LINK ;
 int BT_DBG (char*,struct hci_conn*,struct l2cap_conn*,struct hci_chan*) ;
 int GFP_KERNEL ;
 int HCI_ERROR_REMOTE_USER_TERM ;
 int HCI_FORCE_BREDR_SMP ;
 int HCI_HS_ENABLED ;
 int HCI_LE_ENABLED ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int L2CAP_FC_A2MP ;
 int L2CAP_FC_CONNLESS ;
 int L2CAP_FC_SIG_BREDR ;
 int L2CAP_FC_SMP_BREDR ;

 scalar_t__ bredr_sc_enabled (TYPE_1__*) ;
 struct hci_chan* hci_chan_create (struct hci_conn*) ;
 int hci_chan_del (struct hci_chan*) ;
 int hci_conn_get (struct hci_conn*) ;
 scalar_t__ hci_dev_test_flag (TYPE_1__*,int ) ;
 int kref_init (int *) ;
 struct l2cap_conn* kzalloc (int,int ) ;
 int l2cap_conn_update_id_addr ;
 int l2cap_info_timeout ;
 int mutex_init (int *) ;
 int process_pending_rx ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct l2cap_conn *l2cap_conn_add(struct hci_conn *hcon)
{
 struct l2cap_conn *conn = hcon->l2cap_data;
 struct hci_chan *hchan;

 if (conn)
  return conn;

 hchan = hci_chan_create(hcon);
 if (!hchan)
  return ((void*)0);

 conn = kzalloc(sizeof(*conn), GFP_KERNEL);
 if (!conn) {
  hci_chan_del(hchan);
  return ((void*)0);
 }

 kref_init(&conn->ref);
 hcon->l2cap_data = conn;
 conn->hcon = hci_conn_get(hcon);
 conn->hchan = hchan;

 BT_DBG("hcon %p conn %p hchan %p", hcon, conn, hchan);

 switch (hcon->type) {
 case 128:
  if (hcon->hdev->le_mtu) {
   conn->mtu = hcon->hdev->le_mtu;
   break;
  }

 default:
  conn->mtu = hcon->hdev->acl_mtu;
  break;
 }

 conn->feat_mask = 0;

 conn->local_fixed_chan = L2CAP_FC_SIG_BREDR | L2CAP_FC_CONNLESS;

 if (hcon->type == ACL_LINK &&
     hci_dev_test_flag(hcon->hdev, HCI_HS_ENABLED))
  conn->local_fixed_chan |= L2CAP_FC_A2MP;

 if (hci_dev_test_flag(hcon->hdev, HCI_LE_ENABLED) &&
     (bredr_sc_enabled(hcon->hdev) ||
      hci_dev_test_flag(hcon->hdev, HCI_FORCE_BREDR_SMP)))
  conn->local_fixed_chan |= L2CAP_FC_SMP_BREDR;

 mutex_init(&conn->ident_lock);
 mutex_init(&conn->chan_lock);

 INIT_LIST_HEAD(&conn->chan_l);
 INIT_LIST_HEAD(&conn->users);

 INIT_DELAYED_WORK(&conn->info_timer, l2cap_info_timeout);

 skb_queue_head_init(&conn->pending_rx);
 INIT_WORK(&conn->pending_rx_work, process_pending_rx);
 INIT_WORK(&conn->id_addr_update_work, l2cap_conn_update_id_addr);

 conn->disc_reason = HCI_ERROR_REMOTE_USER_TERM;

 return conn;
}
