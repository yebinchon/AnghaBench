
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;
struct cmd_lookup {scalar_t__ sk; int member_2; struct hci_dev* member_1; int * member_0; } ;


 int HCI_MGMT_DEV_CLASS_EVENTS ;
 int MGMT_EV_CLASS_OF_DEV_CHANGED ;
 int MGMT_OP_ADD_UUID ;
 int MGMT_OP_REMOVE_UUID ;
 int MGMT_OP_SET_DEV_CLASS ;
 int ext_info_changed (struct hci_dev*,int *) ;
 int mgmt_limited_event (int ,struct hci_dev*,int *,int,int ,int *) ;
 int mgmt_pending_foreach (int ,struct hci_dev*,int ,struct cmd_lookup*) ;
 int mgmt_status (int ) ;
 int sk_lookup ;
 int sock_put (scalar_t__) ;

void mgmt_set_class_of_dev_complete(struct hci_dev *hdev, u8 *dev_class,
        u8 status)
{
 struct cmd_lookup match = { ((void*)0), hdev, mgmt_status(status) };

 mgmt_pending_foreach(MGMT_OP_SET_DEV_CLASS, hdev, sk_lookup, &match);
 mgmt_pending_foreach(MGMT_OP_ADD_UUID, hdev, sk_lookup, &match);
 mgmt_pending_foreach(MGMT_OP_REMOVE_UUID, hdev, sk_lookup, &match);

 if (!status) {
  mgmt_limited_event(MGMT_EV_CLASS_OF_DEV_CHANGED, hdev, dev_class,
       3, HCI_MGMT_DEV_CLASS_EVENTS, ((void*)0));
  ext_info_changed(hdev, ((void*)0));
 }

 if (match.sk)
  sock_put(match.sk);
}
