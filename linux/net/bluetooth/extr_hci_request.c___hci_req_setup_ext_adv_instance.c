
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int random_addr; int le_adv_channel_map; } ;
struct hci_cp_le_set_ext_adv_params {int own_addr_type; int tx_power; int handle; int bdaddr; void* secondary_phy; void* primary_phy; int channel_map; void* evt_properties; int max_interval; int min_interval; } ;
struct hci_cp_le_set_adv_set_rand_addr {int own_addr_type; int tx_power; int handle; int bdaddr; void* secondary_phy; void* primary_phy; int channel_map; void* evt_properties; int max_interval; int min_interval; } ;
struct adv_info {int random_addr; } ;
typedef int cp ;
typedef int bdaddr_t ;


 int ADDR_LE_DEV_RANDOM ;
 int * BDADDR_ANY ;
 int EINVAL ;
 int EPERM ;
 void* HCI_ADV_PHY_1M ;
 void* HCI_ADV_PHY_2M ;
 void* HCI_ADV_PHY_CODED ;
 int HCI_OP_LE_SET_ADV_SET_RAND_ADDR ;
 int HCI_OP_LE_SET_EXT_ADV_PARAMS ;
 int LE_EXT_ADV_CONN_IND ;
 int LE_EXT_ADV_NON_CONN_IND ;
 int LE_EXT_ADV_SCAN_IND ;
 int LE_LEGACY_ADV_IND ;
 int LE_LEGACY_ADV_SCAN_IND ;
 int LE_LEGACY_NONCONN_IND ;
 int MGMT_ADV_FLAG_CONNECTABLE ;
 int MGMT_ADV_FLAG_SEC_2M ;
 int MGMT_ADV_FLAG_SEC_CODED ;
 int MGMT_ADV_FLAG_SEC_MASK ;
 int adv_use_rpa (struct hci_dev*,int) ;
 scalar_t__ bacmp (int *,int *) ;
 int bacpy (int *,int *) ;
 void* cpu_to_le16 (int ) ;
 int get_adv_instance_flags (struct hci_dev*,int) ;
 scalar_t__ get_adv_instance_scan_rsp_len (struct hci_dev*,int) ;
 struct adv_info* hci_find_adv_instance (struct hci_dev*,int) ;
 int hci_get_random_address (struct hci_dev*,int,int ,struct adv_info*,int*,int *) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_le_set_ext_adv_params*) ;
 int is_advertising_allowed (struct hci_dev*,int) ;
 int memcpy (int ,int const*,int) ;
 int memset (struct hci_cp_le_set_ext_adv_params*,int ,int) ;
 scalar_t__ mgmt_get_connectable (struct hci_dev*) ;

int __hci_req_setup_ext_adv_instance(struct hci_request *req, u8 instance)
{
 struct hci_cp_le_set_ext_adv_params cp;
 struct hci_dev *hdev = req->hdev;
 bool connectable;
 u32 flags;
 bdaddr_t random_addr;
 u8 own_addr_type;
 int err;
 struct adv_info *adv_instance;
 bool secondary_adv;

 const u8 adv_interval[3] = { 0x00, 0x08, 0x00 };

 if (instance > 0) {
  adv_instance = hci_find_adv_instance(hdev, instance);
  if (!adv_instance)
   return -EINVAL;
 } else {
  adv_instance = ((void*)0);
 }

 flags = get_adv_instance_flags(hdev, instance);




 connectable = (flags & MGMT_ADV_FLAG_CONNECTABLE) ||
        mgmt_get_connectable(hdev);

 if (!is_advertising_allowed(hdev, connectable))
  return -EPERM;





 err = hci_get_random_address(hdev, !connectable,
         adv_use_rpa(hdev, flags), adv_instance,
         &own_addr_type, &random_addr);
 if (err < 0)
  return err;

 memset(&cp, 0, sizeof(cp));

 memcpy(cp.min_interval, adv_interval, sizeof(cp.min_interval));
 memcpy(cp.max_interval, adv_interval, sizeof(cp.max_interval));

 secondary_adv = (flags & MGMT_ADV_FLAG_SEC_MASK);

 if (connectable) {
  if (secondary_adv)
   cp.evt_properties = cpu_to_le16(LE_EXT_ADV_CONN_IND);
  else
   cp.evt_properties = cpu_to_le16(LE_LEGACY_ADV_IND);
 } else if (get_adv_instance_scan_rsp_len(hdev, instance)) {
  if (secondary_adv)
   cp.evt_properties = cpu_to_le16(LE_EXT_ADV_SCAN_IND);
  else
   cp.evt_properties = cpu_to_le16(LE_LEGACY_ADV_SCAN_IND);
 } else {
  if (secondary_adv)
   cp.evt_properties = cpu_to_le16(LE_EXT_ADV_NON_CONN_IND);
  else
   cp.evt_properties = cpu_to_le16(LE_LEGACY_NONCONN_IND);
 }

 cp.own_addr_type = own_addr_type;
 cp.channel_map = hdev->le_adv_channel_map;
 cp.tx_power = 127;
 cp.handle = instance;

 if (flags & MGMT_ADV_FLAG_SEC_2M) {
  cp.primary_phy = HCI_ADV_PHY_1M;
  cp.secondary_phy = HCI_ADV_PHY_2M;
 } else if (flags & MGMT_ADV_FLAG_SEC_CODED) {
  cp.primary_phy = HCI_ADV_PHY_CODED;
  cp.secondary_phy = HCI_ADV_PHY_CODED;
 } else {

  cp.primary_phy = HCI_ADV_PHY_1M;
  cp.secondary_phy = HCI_ADV_PHY_1M;
 }

 hci_req_add(req, HCI_OP_LE_SET_EXT_ADV_PARAMS, sizeof(cp), &cp);

 if (own_addr_type == ADDR_LE_DEV_RANDOM &&
     bacmp(&random_addr, BDADDR_ANY)) {
  struct hci_cp_le_set_adv_set_rand_addr cp;


  if (adv_instance) {
   if (!bacmp(&random_addr, &adv_instance->random_addr))
    return 0;
  } else {
   if (!bacmp(&random_addr, &hdev->random_addr))
    return 0;
  }

  memset(&cp, 0, sizeof(cp));

  cp.handle = 0;
  bacpy(&cp.bdaddr, &random_addr);

  hci_req_add(req,
       HCI_OP_LE_SET_ADV_SET_RAND_ADDR,
       sizeof(cp), &cp);
 }

 return 0;
}
