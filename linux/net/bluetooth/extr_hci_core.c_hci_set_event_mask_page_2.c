
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int* le_features; } ;
typedef int events ;


 int HCI_LE_PING ;
 int HCI_OP_SET_EVENT_MASK_PAGE_2 ;
 int hci_req_add (struct hci_request*,int ,int,int*) ;
 scalar_t__ lmp_csb_master_capable (struct hci_dev*) ;
 scalar_t__ lmp_csb_slave_capable (struct hci_dev*) ;
 scalar_t__ lmp_ping_capable (struct hci_dev*) ;

__attribute__((used)) static void hci_set_event_mask_page_2(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 u8 events[8] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
 bool changed = 0;




 if (lmp_csb_master_capable(hdev)) {
  events[1] |= 0x40;
  events[1] |= 0x80;
  events[2] |= 0x10;
  events[2] |= 0x20;
  changed = 1;
 }




 if (lmp_csb_slave_capable(hdev)) {
  events[2] |= 0x01;
  events[2] |= 0x02;
  events[2] |= 0x04;
  events[2] |= 0x08;
  changed = 1;
 }


 if (lmp_ping_capable(hdev) || hdev->le_features[0] & HCI_LE_PING) {
  events[2] |= 0x80;
  changed = 1;
 }







 if (changed)
  hci_req_add(req, HCI_OP_SET_EVENT_MASK_PAGE_2,
       sizeof(events), events);
}
