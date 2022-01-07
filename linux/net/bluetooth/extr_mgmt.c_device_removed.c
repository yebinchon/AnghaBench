
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_ev_device_removed {TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;
typedef int bdaddr_t ;


 int MGMT_EV_DEVICE_REMOVED ;
 int bacpy (int *,int *) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_device_removed*,int,struct sock*) ;

__attribute__((used)) static void device_removed(struct sock *sk, struct hci_dev *hdev,
      bdaddr_t *bdaddr, u8 type)
{
 struct mgmt_ev_device_removed ev;

 bacpy(&ev.addr.bdaddr, bdaddr);
 ev.addr.type = type;

 mgmt_event(MGMT_EV_DEVICE_REMOVED, hdev, &ev, sizeof(ev), sk);
}
