
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bdaddr; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_request {struct hci_dev* hdev; } ;
struct discovery_state {scalar_t__ state; scalar_t__ type; } ;
struct hci_dev {int le_scan_disable; int flags; struct discovery_state discovery; int name; } ;
struct hci_cp_remote_name_req_cancel {int bdaddr; } ;
typedef int cp ;


 int BDADDR_ANY ;
 int BT_DBG (char*,int ,scalar_t__) ;
 scalar_t__ DISCOVERY_FINDING ;
 scalar_t__ DISCOVERY_RESOLVING ;
 scalar_t__ DISCOVERY_STOPPING ;
 scalar_t__ DISCOV_TYPE_LE ;
 int HCI_INQUIRY ;
 int HCI_LE_SCAN ;
 int HCI_OP_INQUIRY_CANCEL ;
 int HCI_OP_REMOTE_NAME_REQ_CANCEL ;
 int NAME_PENDING ;
 int bacpy (int *,int *) ;
 int cancel_delayed_work (int *) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 struct inquiry_entry* hci_inquiry_cache_lookup_resolve (struct hci_dev*,int ,int ) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_remote_name_req_cancel*) ;
 int hci_req_add_le_scan_disable (struct hci_request*) ;
 scalar_t__ test_bit (int ,int *) ;

bool hci_req_stop_discovery(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 struct discovery_state *d = &hdev->discovery;
 struct hci_cp_remote_name_req_cancel cp;
 struct inquiry_entry *e;
 bool ret = 0;

 BT_DBG("%s state %u", hdev->name, hdev->discovery.state);

 if (d->state == DISCOVERY_FINDING || d->state == DISCOVERY_STOPPING) {
  if (test_bit(HCI_INQUIRY, &hdev->flags))
   hci_req_add(req, HCI_OP_INQUIRY_CANCEL, 0, ((void*)0));

  if (hci_dev_test_flag(hdev, HCI_LE_SCAN)) {
   cancel_delayed_work(&hdev->le_scan_disable);
   hci_req_add_le_scan_disable(req);
  }

  ret = 1;
 } else {

  if (hci_dev_test_flag(hdev, HCI_LE_SCAN)) {
   hci_req_add_le_scan_disable(req);
   ret = 1;
  }
 }


 if (d->type == DISCOV_TYPE_LE)
  return ret;

 if (d->state == DISCOVERY_RESOLVING || d->state == DISCOVERY_STOPPING) {
  e = hci_inquiry_cache_lookup_resolve(hdev, BDADDR_ANY,
           NAME_PENDING);
  if (!e)
   return ret;

  bacpy(&cp.bdaddr, &e->data.bdaddr);
  hci_req_add(req, HCI_OP_REMOTE_NAME_REQ_CANCEL, sizeof(cp),
       &cp);
  ret = 1;
 }

 return ret;
}
