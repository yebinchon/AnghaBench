
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {scalar_t__ hci_ver; int* commands; int* le_features; int quirks; } ;
typedef int events ;


 scalar_t__ BLUETOOTH_VER_1_2 ;
 int HCI_LE_ENCRYPTION ;
 int HCI_OP_SET_EVENT_MASK ;
 int HCI_QUIRK_FIXUP_INQUIRY_MODE ;
 int hci_req_add (struct hci_request*,int ,int,int*) ;
 scalar_t__ lmp_bredr_capable (struct hci_dev*) ;
 scalar_t__ lmp_esco_capable (struct hci_dev*) ;
 scalar_t__ lmp_ext_feat_capable (struct hci_dev*) ;
 scalar_t__ lmp_ext_inq_capable (struct hci_dev*) ;
 scalar_t__ lmp_inq_rssi_capable (struct hci_dev*) ;
 scalar_t__ lmp_le_capable (struct hci_dev*) ;
 scalar_t__ lmp_lsto_capable (struct hci_dev*) ;
 scalar_t__ lmp_no_flush_capable (struct hci_dev*) ;
 scalar_t__ lmp_pause_enc_capable (struct hci_dev*) ;
 scalar_t__ lmp_sniffsubr_capable (struct hci_dev*) ;
 scalar_t__ lmp_ssp_capable (struct hci_dev*) ;
 int memset (int*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_setup_event_mask(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;





 u8 events[8] = { 0xff, 0xff, 0xfb, 0xff, 0x00, 0x00, 0x00, 0x00 };




 if (hdev->hci_ver < BLUETOOTH_VER_1_2)
  return;

 if (lmp_bredr_capable(hdev)) {
  events[4] |= 0x01;
 } else {

  memset(events, 0, sizeof(events));
  events[1] |= 0x20;
  events[1] |= 0x40;
  events[1] |= 0x80;





  if (hdev->commands[0] & 0x20) {
   events[0] |= 0x10;
   events[2] |= 0x04;
   events[3] |= 0x02;
  }




  if (hdev->commands[2] & 0x80)
   events[1] |= 0x08;



  if (hdev->le_features[0] & HCI_LE_ENCRYPTION) {
   events[0] |= 0x80;
   events[5] |= 0x80;
  }
 }

 if (lmp_inq_rssi_capable(hdev) ||
     test_bit(HCI_QUIRK_FIXUP_INQUIRY_MODE, &hdev->quirks))
  events[4] |= 0x02;

 if (lmp_ext_feat_capable(hdev))
  events[4] |= 0x04;

 if (lmp_esco_capable(hdev)) {
  events[5] |= 0x08;
  events[5] |= 0x10;
 }

 if (lmp_sniffsubr_capable(hdev))
  events[5] |= 0x20;

 if (lmp_pause_enc_capable(hdev))
  events[5] |= 0x80;

 if (lmp_ext_inq_capable(hdev))
  events[5] |= 0x40;

 if (lmp_no_flush_capable(hdev))
  events[7] |= 0x01;

 if (lmp_lsto_capable(hdev))
  events[6] |= 0x80;

 if (lmp_ssp_capable(hdev)) {
  events[6] |= 0x01;
  events[6] |= 0x02;
  events[6] |= 0x04;
  events[6] |= 0x08;
  events[6] |= 0x10;
  events[6] |= 0x20;
  events[7] |= 0x04;
  events[7] |= 0x08;
  events[7] |= 0x10;


 }

 if (lmp_le_capable(hdev))
  events[7] |= 0x20;

 hci_req_add(req, HCI_OP_SET_EVENT_MASK, sizeof(events), events);
}
