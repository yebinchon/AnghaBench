
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct smp_irk {int addr_type; int bdaddr; } ;
struct discovery_state {int last_adv_addr_type; int* last_adv_data; int last_adv_data_len; scalar_t__ last_adv_flags; int last_adv_addr; int last_adv_rssi; } ;
struct hci_dev {scalar_t__ le_scan_type; int pend_le_reports; int irk; struct discovery_state discovery; } ;
struct hci_conn {int le_adv_data_len; int le_adv_data; } ;
typedef int s8 ;
typedef int bdaddr_t ;


 int HCI_PRIVACY ;





 int LE_LINK ;
 scalar_t__ LE_SCAN_PASSIVE ;
 scalar_t__ MGMT_DEV_FOUND_NOT_CONNECTABLE ;
 int bacmp (int *,int *) ;
 int bt_dev_err_ratelimited (struct hci_dev*,char*,...) ;
 struct hci_conn* check_pending_le_conn (struct hci_dev*,int *,int,int,int *) ;
 int clear_pending_adv_report (struct hci_dev*) ;
 int has_pending_adv_report (struct hci_dev*) ;
 int hci_bdaddr_is_rpa (int *,int) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 struct smp_irk* hci_get_irk (struct hci_dev*,int *,int) ;
 int hci_pend_le_action_lookup (int *,int *,int) ;
 int memcpy (int ,int*,int) ;
 int mgmt_device_found (struct hci_dev*,int *,int ,int,int *,int ,scalar_t__,int*,int,int*,int) ;
 int smp_irk_matches (struct hci_dev*,int ,int *) ;
 int store_pending_adv_report (struct hci_dev*,int *,int,int ,scalar_t__,int*,int) ;

__attribute__((used)) static void process_adv_report(struct hci_dev *hdev, u8 type, bdaddr_t *bdaddr,
          u8 bdaddr_type, bdaddr_t *direct_addr,
          u8 direct_addr_type, s8 rssi, u8 *data, u8 len)
{
 struct discovery_state *d = &hdev->discovery;
 struct smp_irk *irk;
 struct hci_conn *conn;
 bool match;
 u32 flags;
 u8 *ptr, real_len;

 switch (type) {
 case 131:
 case 132:
 case 129:
 case 130:
 case 128:
  break;
 default:
  bt_dev_err_ratelimited(hdev, "unknown advertising packet "
           "type: 0x%02x", type);
  return;
 }







 for (ptr = data; ptr < data + len && *ptr; ptr += *ptr + 1) {
  if (ptr + 1 + *ptr > data + len)
   break;
 }

 real_len = ptr - data;


 if (len != real_len) {
  bt_dev_err_ratelimited(hdev, "advertising data len corrected");
  len = real_len;
 }






 if (direct_addr) {



  if (!hci_bdaddr_is_rpa(direct_addr, direct_addr_type))
   return;




  if (!hci_dev_test_flag(hdev, HCI_PRIVACY))
   return;





  if (!smp_irk_matches(hdev, hdev->irk, direct_addr))
   return;
 }


 irk = hci_get_irk(hdev, bdaddr, bdaddr_type);
 if (irk) {
  bdaddr = &irk->bdaddr;
  bdaddr_type = irk->addr_type;
 }






 conn = check_pending_le_conn(hdev, bdaddr, bdaddr_type, type,
        direct_addr);
 if (conn && type == 131) {



  memcpy(conn->le_adv_data, data, len);
  conn->le_adv_data_len = len;
 }





 if (hdev->le_scan_type == LE_SCAN_PASSIVE) {
  if (type == 132)
   return;

  if (!hci_pend_le_action_lookup(&hdev->pend_le_reports,
            bdaddr, bdaddr_type))
   return;

  if (type == 130 || type == 129)
   flags = MGMT_DEV_FOUND_NOT_CONNECTABLE;
  else
   flags = 0;
  mgmt_device_found(hdev, bdaddr, LE_LINK, bdaddr_type, ((void*)0),
      rssi, flags, data, len, ((void*)0), 0);
  return;
 }
 if (type == 130 || type == 129 ||
     type == 128)
  flags = MGMT_DEV_FOUND_NOT_CONNECTABLE;
 else
  flags = 0;





 if (!has_pending_adv_report(hdev)) {



  if (type == 131 || type == 129) {
   store_pending_adv_report(hdev, bdaddr, bdaddr_type,
       rssi, flags, data, len);
   return;
  }

  mgmt_device_found(hdev, bdaddr, LE_LINK, bdaddr_type, ((void*)0),
      rssi, flags, data, len, ((void*)0), 0);
  return;
 }


 match = (!bacmp(bdaddr, &d->last_adv_addr) &&
   bdaddr_type == d->last_adv_addr_type);





 if (type != 128 || !match) {

  if (!match)
   mgmt_device_found(hdev, &d->last_adv_addr, LE_LINK,
       d->last_adv_addr_type, ((void*)0),
       d->last_adv_rssi, d->last_adv_flags,
       d->last_adv_data,
       d->last_adv_data_len, ((void*)0), 0);




  if (type == 131 || type == 129) {
   store_pending_adv_report(hdev, bdaddr, bdaddr_type,
       rssi, flags, data, len);
   return;
  }




  clear_pending_adv_report(hdev);
  mgmt_device_found(hdev, bdaddr, LE_LINK, bdaddr_type, ((void*)0),
      rssi, flags, data, len, ((void*)0), 0);
  return;
 }





 mgmt_device_found(hdev, &d->last_adv_addr, LE_LINK,
     d->last_adv_addr_type, ((void*)0), rssi, d->last_adv_flags,
     d->last_adv_data, d->last_adv_data_len, data, len);
 clear_pending_adv_report(hdev);
}
