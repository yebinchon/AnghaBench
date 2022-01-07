
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_ev_passkey_notify {int entered; int passkey; TYPE_1__ addr; } ;
struct hci_dev {int name; } ;
typedef int ev ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int ) ;
 int MGMT_EV_PASSKEY_NOTIFY ;
 int __cpu_to_le32 (int ) ;
 int bacpy (int *,int *) ;
 int link_to_bdaddr (int ,int ) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_passkey_notify*,int,int *) ;

int mgmt_user_passkey_notify(struct hci_dev *hdev, bdaddr_t *bdaddr,
        u8 link_type, u8 addr_type, u32 passkey,
        u8 entered)
{
 struct mgmt_ev_passkey_notify ev;

 BT_DBG("%s", hdev->name);

 bacpy(&ev.addr.bdaddr, bdaddr);
 ev.addr.type = link_to_bdaddr(link_type, addr_type);
 ev.passkey = __cpu_to_le32(passkey);
 ev.entered = entered;

 return mgmt_event(MGMT_EV_PASSKEY_NOTIFY, hdev, &ev, sizeof(ev), ((void*)0));
}
