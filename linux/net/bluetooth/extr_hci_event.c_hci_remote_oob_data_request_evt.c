
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct oob_data {int rand192; int hash192; int rand256; int hash256; } ;
struct hci_ev_remote_oob_data_request {int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_cp_remote_oob_ext_data_reply {int rand; int hash; int bdaddr; int rand256; int hash256; int rand192; int hash192; } ;
struct hci_cp_remote_oob_data_reply {int rand; int hash; int bdaddr; int rand256; int hash256; int rand192; int hash192; } ;
struct hci_cp_remote_oob_data_neg_reply {int rand; int hash; int bdaddr; int rand256; int hash256; int rand192; int hash192; } ;
typedef int cp ;


 int BDADDR_BREDR ;
 int BT_DBG (char*,int ) ;
 int HCI_MGMT ;
 int HCI_OP_REMOTE_OOB_DATA_NEG_REPLY ;
 int HCI_OP_REMOTE_OOB_DATA_REPLY ;
 int HCI_OP_REMOTE_OOB_EXT_DATA_REPLY ;
 int HCI_SC_ONLY ;
 int bacpy (int *,int *) ;
 scalar_t__ bredr_sc_enabled (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct oob_data* hci_find_remote_oob_data (struct hci_dev*,int *,int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_remote_oob_ext_data_reply*) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void hci_remote_oob_data_request_evt(struct hci_dev *hdev,
         struct sk_buff *skb)
{
 struct hci_ev_remote_oob_data_request *ev = (void *) skb->data;
 struct oob_data *data;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 if (!hci_dev_test_flag(hdev, HCI_MGMT))
  goto unlock;

 data = hci_find_remote_oob_data(hdev, &ev->bdaddr, BDADDR_BREDR);
 if (!data) {
  struct hci_cp_remote_oob_data_neg_reply cp;

  bacpy(&cp.bdaddr, &ev->bdaddr);
  hci_send_cmd(hdev, HCI_OP_REMOTE_OOB_DATA_NEG_REPLY,
        sizeof(cp), &cp);
  goto unlock;
 }

 if (bredr_sc_enabled(hdev)) {
  struct hci_cp_remote_oob_ext_data_reply cp;

  bacpy(&cp.bdaddr, &ev->bdaddr);
  if (hci_dev_test_flag(hdev, HCI_SC_ONLY)) {
   memset(cp.hash192, 0, sizeof(cp.hash192));
   memset(cp.rand192, 0, sizeof(cp.rand192));
  } else {
   memcpy(cp.hash192, data->hash192, sizeof(cp.hash192));
   memcpy(cp.rand192, data->rand192, sizeof(cp.rand192));
  }
  memcpy(cp.hash256, data->hash256, sizeof(cp.hash256));
  memcpy(cp.rand256, data->rand256, sizeof(cp.rand256));

  hci_send_cmd(hdev, HCI_OP_REMOTE_OOB_EXT_DATA_REPLY,
        sizeof(cp), &cp);
 } else {
  struct hci_cp_remote_oob_data_reply cp;

  bacpy(&cp.bdaddr, &ev->bdaddr);
  memcpy(cp.hash, data->hash192, sizeof(cp.hash));
  memcpy(cp.rand, data->rand192, sizeof(cp.rand));

  hci_send_cmd(hdev, HCI_OP_REMOTE_OOB_DATA_REPLY,
        sizeof(cp), &cp);
 }

unlock:
 hci_dev_unlock(hdev);
}
