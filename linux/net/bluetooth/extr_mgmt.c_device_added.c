
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct sock {int dummy; } ;
struct TYPE_2__ {void* type; int bdaddr; } ;
struct mgmt_ev_device_added {void* action; TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;
typedef int bdaddr_t ;


 int MGMT_EV_DEVICE_ADDED ;
 int bacpy (int *,int *) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_device_added*,int,struct sock*) ;

__attribute__((used)) static void device_added(struct sock *sk, struct hci_dev *hdev,
    bdaddr_t *bdaddr, u8 type, u8 action)
{
 struct mgmt_ev_device_added ev;

 bacpy(&ev.addr.bdaddr, bdaddr);
 ev.addr.type = type;
 ev.action = action;

 mgmt_event(MGMT_EV_DEVICE_ADDED, hdev, &ev, sizeof(ev), sk);
}
