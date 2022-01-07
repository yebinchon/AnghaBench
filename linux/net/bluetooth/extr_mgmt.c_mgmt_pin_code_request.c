
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_ev_pin_code_request {int secure; TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef int ev ;
typedef int bdaddr_t ;


 int BDADDR_BREDR ;
 int MGMT_EV_PIN_CODE_REQUEST ;
 int bacpy (int *,int *) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_pin_code_request*,int,int *) ;

void mgmt_pin_code_request(struct hci_dev *hdev, bdaddr_t *bdaddr, u8 secure)
{
 struct mgmt_ev_pin_code_request ev;

 bacpy(&ev.addr.bdaddr, bdaddr);
 ev.addr.type = BDADDR_BREDR;
 ev.secure = secure;

 mgmt_event(MGMT_EV_PIN_CODE_REQUEST, hdev, &ev, sizeof(ev), ((void*)0));
}
