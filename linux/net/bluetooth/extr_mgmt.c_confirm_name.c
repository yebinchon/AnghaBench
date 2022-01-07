
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sock {int dummy; } ;
struct TYPE_2__ {int bdaddr; } ;
struct mgmt_cp_confirm_name {TYPE_1__ addr; scalar_t__ name_known; } ;
struct inquiry_entry {int name_state; int list; } ;
struct hci_dev {int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int MGMT_OP_CONFIRM_NAME ;
 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int NAME_KNOWN ;
 int NAME_NEEDED ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_discovery_active (struct hci_dev*) ;
 struct inquiry_entry* hci_inquiry_cache_lookup_unknown (struct hci_dev*,int *) ;
 int hci_inquiry_cache_update_resolve (struct hci_dev*,struct inquiry_entry*) ;
 int list_del (int *) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static int confirm_name(struct sock *sk, struct hci_dev *hdev, void *data,
   u16 len)
{
 struct mgmt_cp_confirm_name *cp = data;
 struct inquiry_entry *e;
 int err;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 if (!hci_discovery_active(hdev)) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_CONFIRM_NAME,
     MGMT_STATUS_FAILED, &cp->addr,
     sizeof(cp->addr));
  goto failed;
 }

 e = hci_inquiry_cache_lookup_unknown(hdev, &cp->addr.bdaddr);
 if (!e) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_CONFIRM_NAME,
     MGMT_STATUS_INVALID_PARAMS, &cp->addr,
     sizeof(cp->addr));
  goto failed;
 }

 if (cp->name_known) {
  e->name_state = NAME_KNOWN;
  list_del(&e->list);
 } else {
  e->name_state = NAME_NEEDED;
  hci_inquiry_cache_update_resolve(hdev, e);
 }

 err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_CONFIRM_NAME, 0,
    &cp->addr, sizeof(cp->addr));

failed:
 hci_dev_unlock(hdev);
 return err;
}
