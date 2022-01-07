
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mgmt_pending_cmd {int * sk; } ;
struct mgmt_cp_set_local_name {int short_name; int name; } ;
struct hci_dev {int dev_name; scalar_t__* short_name; } ;
typedef int ev ;


 int HCI_MAX_NAME_LENGTH ;
 int HCI_MAX_SHORT_NAME_LENGTH ;
 int HCI_MGMT_LOCAL_NAME_EVENTS ;
 int MGMT_EV_LOCAL_NAME_CHANGED ;
 int MGMT_OP_SET_LOCAL_NAME ;
 int MGMT_OP_SET_POWERED ;
 int ext_info_changed (struct hci_dev*,int *) ;
 int memcpy (int ,scalar_t__*,int) ;
 int memset (struct mgmt_cp_set_local_name*,int ,int) ;
 int mgmt_limited_event (int ,struct hci_dev*,struct mgmt_cp_set_local_name*,int,int ,int *) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

void mgmt_set_local_name_complete(struct hci_dev *hdev, u8 *name, u8 status)
{
 struct mgmt_cp_set_local_name ev;
 struct mgmt_pending_cmd *cmd;

 if (status)
  return;

 memset(&ev, 0, sizeof(ev));
 memcpy(ev.name, name, HCI_MAX_NAME_LENGTH);
 memcpy(ev.short_name, hdev->short_name, HCI_MAX_SHORT_NAME_LENGTH);

 cmd = pending_find(MGMT_OP_SET_LOCAL_NAME, hdev);
 if (!cmd) {
  memcpy(hdev->dev_name, name, sizeof(hdev->dev_name));




  if (pending_find(MGMT_OP_SET_POWERED, hdev))
   return;
 }

 mgmt_limited_event(MGMT_EV_LOCAL_NAME_CHANGED, hdev, &ev, sizeof(ev),
      HCI_MGMT_LOCAL_NAME_EVENTS, cmd ? cmd->sk : ((void*)0));
 ext_info_changed(hdev, cmd ? cmd->sk : ((void*)0));
}
