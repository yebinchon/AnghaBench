
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_ev_device_found {int eir_len; int eir; int rssi; TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef int s8 ;
typedef int buf ;
typedef int bdaddr_t ;


 int EIR_NAME_COMPLETE ;
 int HCI_MAX_NAME_LENGTH ;
 int MGMT_EV_DEVICE_FOUND ;
 int bacpy (int *,int *) ;
 int cpu_to_le16 (scalar_t__) ;
 scalar_t__ eir_append_data (int ,int ,int ,int *,int ) ;
 int link_to_bdaddr (int ,int ) ;
 int memset (char*,int ,int) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_device_found*,scalar_t__,int *) ;

void mgmt_remote_name(struct hci_dev *hdev, bdaddr_t *bdaddr, u8 link_type,
        u8 addr_type, s8 rssi, u8 *name, u8 name_len)
{
 struct mgmt_ev_device_found *ev;
 char buf[sizeof(*ev) + HCI_MAX_NAME_LENGTH + 2];
 u16 eir_len;

 ev = (struct mgmt_ev_device_found *) buf;

 memset(buf, 0, sizeof(buf));

 bacpy(&ev->addr.bdaddr, bdaddr);
 ev->addr.type = link_to_bdaddr(link_type, addr_type);
 ev->rssi = rssi;

 eir_len = eir_append_data(ev->eir, 0, EIR_NAME_COMPLETE, name,
      name_len);

 ev->eir_len = cpu_to_le16(eir_len);

 mgmt_event(MGMT_EV_DEVICE_FOUND, hdev, ev, sizeof(*ev) + eir_len, ((void*)0));
}
