
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_cp_add_uuid {int uuid; int svc_hint; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int dev_class; int id; int uuids; int name; } ;
struct bt_uuid {int list; int size; int svc_hint; int uuid; } ;


 int BT_DBG (char*,int ) ;
 int ENODATA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MGMT_OP_ADD_UUID ;
 int MGMT_STATUS_BUSY ;
 int __hci_req_update_class (struct hci_request*) ;
 int __hci_req_update_eir (struct hci_request*) ;
 int add_uuid_complete ;
 int get_uuid_size (int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 struct bt_uuid* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,int ,int) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 scalar_t__ pending_eir_or_class (struct hci_dev*) ;

__attribute__((used)) static int add_uuid(struct sock *sk, struct hci_dev *hdev, void *data, u16 len)
{
 struct mgmt_cp_add_uuid *cp = data;
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;
 struct bt_uuid *uuid;
 int err;

 BT_DBG("request for %s", hdev->name);

 hci_dev_lock(hdev);

 if (pending_eir_or_class(hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_UUID,
          MGMT_STATUS_BUSY);
  goto failed;
 }

 uuid = kmalloc(sizeof(*uuid), GFP_KERNEL);
 if (!uuid) {
  err = -ENOMEM;
  goto failed;
 }

 memcpy(uuid->uuid, cp->uuid, 16);
 uuid->svc_hint = cp->svc_hint;
 uuid->size = get_uuid_size(cp->uuid);

 list_add_tail(&uuid->list, &hdev->uuids);

 hci_req_init(&req, hdev);

 __hci_req_update_class(&req);
 __hci_req_update_eir(&req);

 err = hci_req_run(&req, add_uuid_complete);
 if (err < 0) {
  if (err != -ENODATA)
   goto failed;

  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_ADD_UUID, 0,
     hdev->dev_class, 3);
  goto failed;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_ADD_UUID, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto failed;
 }

 err = 0;

failed:
 hci_dev_unlock(hdev);
 return err;
}
