
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_ev_device_unpaired {TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;
typedef int bdaddr_t ;


 int MGMT_EV_DEVICE_UNPAIRED ;
 int bacpy (int *,int *) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_device_unpaired*,int,struct sock*) ;

__attribute__((used)) static int device_unpaired(struct hci_dev *hdev, bdaddr_t *bdaddr,
      u8 addr_type, struct sock *skip_sk)
{
 struct mgmt_ev_device_unpaired ev;

 bacpy(&ev.addr.bdaddr, bdaddr);
 ev.addr.type = addr_type;

 return mgmt_event(MGMT_EV_DEVICE_UNPAIRED, hdev, &ev, sizeof(ev),
     skip_sk);
}
