
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ rssi; scalar_t__ uuid_count; int uuids; } ;
struct hci_dev {TYPE_1__ discovery; int quirks; } ;
typedef scalar_t__ s8 ;


 int HCI_QUIRK_STRICT_DUPLICATE_FILTER ;
 scalar_t__ HCI_RSSI_INVALID ;
 int eir_has_uuids (int *,int ,scalar_t__,int ) ;
 int restart_le_scan (struct hci_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool is_filter_match(struct hci_dev *hdev, s8 rssi, u8 *eir,
       u16 eir_len, u8 *scan_rsp, u8 scan_rsp_len)
{
 if (hdev->discovery.rssi != HCI_RSSI_INVALID &&
     (rssi == HCI_RSSI_INVALID ||
     (rssi < hdev->discovery.rssi &&
      !test_bit(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks))))
  return 0;

 if (hdev->discovery.uuid_count != 0) {



  if (!eir_has_uuids(eir, eir_len, hdev->discovery.uuid_count,
       hdev->discovery.uuids) &&
      !eir_has_uuids(scan_rsp, scan_rsp_len,
       hdev->discovery.uuid_count,
       hdev->discovery.uuids))
   return 0;
 }




 if (test_bit(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks)) {
  restart_le_scan(hdev);


  if (hdev->discovery.rssi != HCI_RSSI_INVALID &&
      rssi < hdev->discovery.rssi)
   return 0;
 }

 return 1;
}
