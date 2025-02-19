
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int type; int bdaddr; } ;
struct mgmt_ev_device_found {scalar_t__* eir; int eir_len; int flags; scalar_t__ rssi; TYPE_2__ addr; } ;
struct TYPE_3__ {int report_invalid_rssi; scalar_t__ limited; scalar_t__ result_filtering; } ;
struct hci_dev {TYPE_1__ discovery; int pend_le_reports; } ;
typedef scalar_t__ s8 ;
typedef int buf ;
typedef int bdaddr_t ;


 scalar_t__ ACL_LINK ;
 int EIR_CLASS_OF_DEV ;
 int EIR_FLAGS ;
 scalar_t__ HCI_RSSI_INVALID ;
 scalar_t__ LE_AD_LIMITED ;
 scalar_t__ LE_LINK ;
 int MGMT_EV_DEVICE_FOUND ;
 int bacpy (int *,int *) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int eir_append_data (scalar_t__*,int,int ,scalar_t__*,int) ;
 scalar_t__* eir_get_data (scalar_t__*,int,int ,int *) ;
 int hci_discovery_active (struct hci_dev*) ;
 int is_filter_match (struct hci_dev*,scalar_t__,scalar_t__*,int,scalar_t__*,scalar_t__) ;
 int link_to_bdaddr (scalar_t__,scalar_t__) ;
 scalar_t__ list_empty (int *) ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;
 int memset (char*,int ,int) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_device_found*,size_t,int *) ;

void mgmt_device_found(struct hci_dev *hdev, bdaddr_t *bdaddr, u8 link_type,
         u8 addr_type, u8 *dev_class, s8 rssi, u32 flags,
         u8 *eir, u16 eir_len, u8 *scan_rsp, u8 scan_rsp_len)
{
 char buf[512];
 struct mgmt_ev_device_found *ev = (void *)buf;
 size_t ev_size;





 if (!hci_discovery_active(hdev)) {
  if (link_type == ACL_LINK)
   return;
  if (link_type == LE_LINK && list_empty(&hdev->pend_le_reports))
   return;
 }

 if (hdev->discovery.result_filtering) {

  if (!is_filter_match(hdev, rssi, eir, eir_len, scan_rsp,
         scan_rsp_len))
   return;
 }

 if (hdev->discovery.limited) {

  if (dev_class) {
   if (!(dev_class[1] & 0x20))
    return;
  } else {
   u8 *flags = eir_get_data(eir, eir_len, EIR_FLAGS, ((void*)0));
   if (!flags || !(flags[0] & LE_AD_LIMITED))
    return;
  }
 }




 if (sizeof(*ev) + eir_len + scan_rsp_len + 5 > sizeof(buf))
  return;

 memset(buf, 0, sizeof(buf));
 if (rssi == HCI_RSSI_INVALID && !hdev->discovery.report_invalid_rssi &&
     link_type == ACL_LINK)
  rssi = 0;

 bacpy(&ev->addr.bdaddr, bdaddr);
 ev->addr.type = link_to_bdaddr(link_type, addr_type);
 ev->rssi = rssi;
 ev->flags = cpu_to_le32(flags);

 if (eir_len > 0)

  memcpy(ev->eir, eir, eir_len);

 if (dev_class && !eir_get_data(ev->eir, eir_len, EIR_CLASS_OF_DEV,
           ((void*)0)))
  eir_len = eir_append_data(ev->eir, eir_len, EIR_CLASS_OF_DEV,
       dev_class, 3);

 if (scan_rsp_len > 0)

  memcpy(ev->eir + eir_len, scan_rsp, scan_rsp_len);

 ev->eir_len = cpu_to_le16(eir_len + scan_rsp_len);
 ev_size = sizeof(*ev) + eir_len + scan_rsp_len;

 mgmt_event(MGMT_EV_DEVICE_FOUND, hdev, ev, ev_size, ((void*)0));
}
