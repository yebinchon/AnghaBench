
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int type; int bdaddr; } ;
struct mgmt_ev_connect_failed {int status; TYPE_1__ addr; } ;
struct TYPE_4__ {int work; } ;
struct hci_dev {TYPE_2__ power_off; int req_workqueue; } ;
typedef int ev ;
typedef int bdaddr_t ;


 int MGMT_EV_CONNECT_FAILED ;
 int bacpy (int *,int *) ;
 int cancel_delayed_work (TYPE_2__*) ;
 int hci_conn_count (struct hci_dev*) ;
 int link_to_bdaddr (int ,int ) ;
 int mgmt_event (int ,struct hci_dev*,struct mgmt_ev_connect_failed*,int,int *) ;
 scalar_t__ mgmt_powering_down (struct hci_dev*) ;
 int mgmt_status (int ) ;
 int queue_work (int ,int *) ;

void mgmt_connect_failed(struct hci_dev *hdev, bdaddr_t *bdaddr, u8 link_type,
    u8 addr_type, u8 status)
{
 struct mgmt_ev_connect_failed ev;




 if (mgmt_powering_down(hdev) && hci_conn_count(hdev) == 1) {
  cancel_delayed_work(&hdev->power_off);
  queue_work(hdev->req_workqueue, &hdev->power_off.work);
 }

 bacpy(&ev.addr.bdaddr, bdaddr);
 ev.addr.type = link_to_bdaddr(link_type, addr_type);
 ev.status = mgmt_status(status);

 mgmt_event(MGMT_EV_CONNECT_FAILED, hdev, &ev, sizeof(ev), ((void*)0));
}
