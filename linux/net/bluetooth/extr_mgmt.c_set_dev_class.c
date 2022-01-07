
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_cp_set_dev_class {int minor; int major; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int major_class; int minor_class; int dev_class; int id; int service_cache; int name; } ;


 int BT_DBG (char*,int ) ;
 int ENODATA ;
 int ENOMEM ;
 int HCI_SERVICE_CACHE ;
 int MGMT_OP_SET_DEV_CLASS ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int __hci_req_update_class (struct hci_request*) ;
 int __hci_req_update_eir (struct hci_request*) ;
 int cancel_delayed_work_sync (int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int lmp_bredr_capable (struct hci_dev*) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,int ,int) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 scalar_t__ pending_eir_or_class (struct hci_dev*) ;
 int set_class_complete ;

__attribute__((used)) static int set_dev_class(struct sock *sk, struct hci_dev *hdev, void *data,
    u16 len)
{
 struct mgmt_cp_set_dev_class *cp = data;
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;
 int err;

 BT_DBG("request for %s", hdev->name);

 if (!lmp_bredr_capable(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DEV_CLASS,
           MGMT_STATUS_NOT_SUPPORTED);

 hci_dev_lock(hdev);

 if (pending_eir_or_class(hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DEV_CLASS,
          MGMT_STATUS_BUSY);
  goto unlock;
 }

 if ((cp->minor & 0x03) != 0 || (cp->major & 0xe0) != 0) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DEV_CLASS,
          MGMT_STATUS_INVALID_PARAMS);
  goto unlock;
 }

 hdev->major_class = cp->major;
 hdev->minor_class = cp->minor;

 if (!hdev_is_powered(hdev)) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_SET_DEV_CLASS, 0,
     hdev->dev_class, 3);
  goto unlock;
 }

 hci_req_init(&req, hdev);

 if (hci_dev_test_and_clear_flag(hdev, HCI_SERVICE_CACHE)) {
  hci_dev_unlock(hdev);
  cancel_delayed_work_sync(&hdev->service_cache);
  hci_dev_lock(hdev);
  __hci_req_update_eir(&req);
 }

 __hci_req_update_class(&req);

 err = hci_req_run(&req, set_class_complete);
 if (err < 0) {
  if (err != -ENODATA)
   goto unlock;

  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_SET_DEV_CLASS, 0,
     hdev->dev_class, 3);
  goto unlock;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_DEV_CLASS, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto unlock;
 }

 err = 0;

unlock:
 hci_dev_unlock(hdev);
 return err;
}
