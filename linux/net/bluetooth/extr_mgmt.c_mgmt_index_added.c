
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgmt_ev_ext_index {int type; int bus; } ;
struct hci_dev {int dev_type; int bus; int quirks; } ;
typedef int ev ;



 int HCI_MGMT_EXT_INDEX_EVENTS ;
 int HCI_MGMT_INDEX_EVENTS ;
 int HCI_MGMT_UNCONF_INDEX_EVENTS ;

 int HCI_QUIRK_RAW_DEVICE ;
 int HCI_UNCONFIGURED ;
 int MGMT_EV_EXT_INDEX_ADDED ;
 int MGMT_EV_INDEX_ADDED ;
 int MGMT_EV_UNCONF_INDEX_ADDED ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int mgmt_index_event (int ,struct hci_dev*,struct mgmt_ev_ext_index*,int,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void mgmt_index_added(struct hci_dev *hdev)
{
 struct mgmt_ev_ext_index ev;

 if (test_bit(HCI_QUIRK_RAW_DEVICE, &hdev->quirks))
  return;

 switch (hdev->dev_type) {
 case 128:
  if (hci_dev_test_flag(hdev, HCI_UNCONFIGURED)) {
   mgmt_index_event(MGMT_EV_UNCONF_INDEX_ADDED, hdev,
      ((void*)0), 0, HCI_MGMT_UNCONF_INDEX_EVENTS);
   ev.type = 0x01;
  } else {
   mgmt_index_event(MGMT_EV_INDEX_ADDED, hdev, ((void*)0), 0,
      HCI_MGMT_INDEX_EVENTS);
   ev.type = 0x00;
  }
  break;
 case 129:
  ev.type = 0x02;
  break;
 default:
  return;
 }

 ev.bus = hdev->bus;

 mgmt_index_event(MGMT_EV_EXT_INDEX_ADDED, hdev, &ev, sizeof(ev),
    HCI_MGMT_EXT_INDEX_EVENTS);
}
