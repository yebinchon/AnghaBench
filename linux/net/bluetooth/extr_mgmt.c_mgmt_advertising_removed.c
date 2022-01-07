
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct mgmt_ev_advertising_removed {int instance; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;


 int MGMT_EV_ADVERTISING_REMOVED ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_advertising_removed*,int,struct sock*) ;

void mgmt_advertising_removed(struct sock *sk, struct hci_dev *hdev,
         u8 instance)
{
 struct mgmt_ev_advertising_removed ev;

 ev.instance = instance;

 mgmt_event(MGMT_EV_ADVERTISING_REMOVED, hdev, &ev, sizeof(ev), sk);
}
