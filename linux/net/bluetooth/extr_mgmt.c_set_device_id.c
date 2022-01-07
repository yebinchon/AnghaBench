
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_set_device_id {int version; int product; int vendor; int source; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int devid_source; int id; void* devid_version; void* devid_product; void* devid_vendor; int name; } ;
typedef int __u16 ;


 int BT_DBG (char*,int ) ;
 int MGMT_OP_SET_DEVICE_ID ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int __hci_req_update_eir (struct hci_request*) ;
 void* __le16_to_cpu (int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int *) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,int *,int ) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;

__attribute__((used)) static int set_device_id(struct sock *sk, struct hci_dev *hdev, void *data,
    u16 len)
{
 struct mgmt_cp_set_device_id *cp = data;
 struct hci_request req;
 int err;
 __u16 source;

 BT_DBG("%s", hdev->name);

 source = __le16_to_cpu(cp->source);

 if (source > 0x0002)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DEVICE_ID,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 hdev->devid_source = source;
 hdev->devid_vendor = __le16_to_cpu(cp->vendor);
 hdev->devid_product = __le16_to_cpu(cp->product);
 hdev->devid_version = __le16_to_cpu(cp->version);

 err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_SET_DEVICE_ID, 0,
    ((void*)0), 0);

 hci_req_init(&req, hdev);
 __hci_req_update_eir(&req);
 hci_req_run(&req, ((void*)0));

 hci_dev_unlock(hdev);

 return err;
}
