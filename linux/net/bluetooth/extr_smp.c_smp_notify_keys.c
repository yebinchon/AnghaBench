
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct smp_cmd_pairing {int auth_req; } ;
struct smp_chan {scalar_t__ link_key; TYPE_1__* conn; int flags; TYPE_2__* slave_ltk; TYPE_2__* ltk; TYPE_4__* slave_csrk; TYPE_4__* csrk; TYPE_3__* remote_irk; int * prsp; int * preq; } ;
struct link_key {scalar_t__ type; int list; } ;
struct l2cap_conn {int id_addr_update_work; struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_dev {int workqueue; } ;
struct hci_conn {scalar_t__ type; scalar_t__ key_type; scalar_t__ sec_level; int dst; int dst_type; int flags; struct hci_dev* hdev; } ;
struct TYPE_8__ {int bdaddr; int bdaddr_type; } ;
struct TYPE_7__ {int addr_type; int bdaddr; } ;
struct TYPE_6__ {int bdaddr; int bdaddr_type; } ;
struct TYPE_5__ {int hcon; } ;


 scalar_t__ ACL_LINK ;
 scalar_t__ BT_SECURITY_FIPS ;
 int HCI_CONN_FLUSH_KEY ;
 int HCI_KEEP_DEBUG_KEYS ;
 scalar_t__ HCI_LK_AUTH_COMBINATION_P256 ;
 scalar_t__ HCI_LK_DEBUG_COMBINATION ;
 scalar_t__ HCI_LK_UNAUTH_COMBINATION_P256 ;
 scalar_t__ LE_LINK ;
 int SMP_AUTH_BONDING ;
 int SMP_FLAG_DEBUG_KEY ;
 int bacpy (int *,int *) ;
 struct link_key* hci_add_link_key (struct hci_dev*,int ,int *,scalar_t__,scalar_t__,int ,int*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int kfree_rcu (struct link_key*,int ) ;
 int list_del_rcu (int *) ;
 int mgmt_new_csrk (struct hci_dev*,TYPE_4__*,int) ;
 int mgmt_new_irk (struct hci_dev*,TYPE_3__*,int) ;
 int mgmt_new_link_key (struct hci_dev*,struct link_key*,int) ;
 int mgmt_new_ltk (struct hci_dev*,TYPE_2__*,int) ;
 int queue_work (int ,int *) ;
 int rcu ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void smp_notify_keys(struct l2cap_conn *conn)
{
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp = chan->data;
 struct hci_conn *hcon = conn->hcon;
 struct hci_dev *hdev = hcon->hdev;
 struct smp_cmd_pairing *req = (void *) &smp->preq[1];
 struct smp_cmd_pairing *rsp = (void *) &smp->prsp[1];
 bool persistent;

 if (hcon->type == ACL_LINK) {
  if (hcon->key_type == HCI_LK_DEBUG_COMBINATION)
   persistent = 0;
  else
   persistent = !test_bit(HCI_CONN_FLUSH_KEY,
            &hcon->flags);
 } else {




  persistent = !!((req->auth_req & rsp->auth_req) &
    SMP_AUTH_BONDING);
 }

 if (smp->remote_irk) {
  mgmt_new_irk(hdev, smp->remote_irk, persistent);





  if (hcon->type == LE_LINK) {
   bacpy(&hcon->dst, &smp->remote_irk->bdaddr);
   hcon->dst_type = smp->remote_irk->addr_type;
   queue_work(hdev->workqueue, &conn->id_addr_update_work);
  }
 }

 if (smp->csrk) {
  smp->csrk->bdaddr_type = hcon->dst_type;
  bacpy(&smp->csrk->bdaddr, &hcon->dst);
  mgmt_new_csrk(hdev, smp->csrk, persistent);
 }

 if (smp->slave_csrk) {
  smp->slave_csrk->bdaddr_type = hcon->dst_type;
  bacpy(&smp->slave_csrk->bdaddr, &hcon->dst);
  mgmt_new_csrk(hdev, smp->slave_csrk, persistent);
 }

 if (smp->ltk) {
  smp->ltk->bdaddr_type = hcon->dst_type;
  bacpy(&smp->ltk->bdaddr, &hcon->dst);
  mgmt_new_ltk(hdev, smp->ltk, persistent);
 }

 if (smp->slave_ltk) {
  smp->slave_ltk->bdaddr_type = hcon->dst_type;
  bacpy(&smp->slave_ltk->bdaddr, &hcon->dst);
  mgmt_new_ltk(hdev, smp->slave_ltk, persistent);
 }

 if (smp->link_key) {
  struct link_key *key;
  u8 type;

  if (test_bit(SMP_FLAG_DEBUG_KEY, &smp->flags))
   type = HCI_LK_DEBUG_COMBINATION;
  else if (hcon->sec_level == BT_SECURITY_FIPS)
   type = HCI_LK_AUTH_COMBINATION_P256;
  else
   type = HCI_LK_UNAUTH_COMBINATION_P256;

  key = hci_add_link_key(hdev, smp->conn->hcon, &hcon->dst,
           smp->link_key, type, 0, &persistent);
  if (key) {
   mgmt_new_link_key(hdev, key, persistent);




   if (!hci_dev_test_flag(hdev, HCI_KEEP_DEBUG_KEYS) &&
       key->type == HCI_LK_DEBUG_COMBINATION) {
    list_del_rcu(&key->list);
    kfree_rcu(key, rcu);
   }
  }
 }
}
