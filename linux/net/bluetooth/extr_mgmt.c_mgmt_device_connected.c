
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_ev_device_connected {int eir_len; int * eir; int flags; TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {size_t le_adv_data_len; scalar_t__* dev_class; int le_adv_data; int dst_type; int type; int dst; } ;


 int EIR_CLASS_OF_DEV ;
 int EIR_NAME_COMPLETE ;
 int MGMT_EV_DEVICE_CONNECTED ;
 int __cpu_to_le32 (int ) ;
 int bacpy (int *,int *) ;
 int cpu_to_le16 (size_t) ;
 size_t eir_append_data (int *,size_t,int ,scalar_t__*,int) ;
 int link_to_bdaddr (int ,int ) ;
 scalar_t__ memcmp (scalar_t__*,char*,int) ;
 int memcpy (int *,int ,size_t) ;
 int mgmt_event (int ,struct hci_dev*,char*,int,int *) ;

void mgmt_device_connected(struct hci_dev *hdev, struct hci_conn *conn,
      u32 flags, u8 *name, u8 name_len)
{
 char buf[512];
 struct mgmt_ev_device_connected *ev = (void *) buf;
 u16 eir_len = 0;

 bacpy(&ev->addr.bdaddr, &conn->dst);
 ev->addr.type = link_to_bdaddr(conn->type, conn->dst_type);

 ev->flags = __cpu_to_le32(flags);





 if (conn->le_adv_data_len > 0) {
  memcpy(&ev->eir[eir_len],
         conn->le_adv_data, conn->le_adv_data_len);
  eir_len = conn->le_adv_data_len;
 } else {
  if (name_len > 0)
   eir_len = eir_append_data(ev->eir, 0, EIR_NAME_COMPLETE,
        name, name_len);

  if (memcmp(conn->dev_class, "\0\0\0", 3) != 0)
   eir_len = eir_append_data(ev->eir, eir_len,
        EIR_CLASS_OF_DEV,
        conn->dev_class, 3);
 }

 ev->eir_len = cpu_to_le16(eir_len);

 mgmt_event(MGMT_EV_DEVICE_CONNECTED, hdev, buf,
      sizeof(*ev) + eir_len, ((void*)0));
}
