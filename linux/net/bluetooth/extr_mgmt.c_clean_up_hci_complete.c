
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int work; } ;
struct hci_dev {TYPE_1__ power_off; int req_workqueue; int name; } ;


 int BT_DBG (char*,int ,int ) ;
 int cancel_delayed_work (TYPE_1__*) ;
 scalar_t__ hci_conn_count (struct hci_dev*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void clean_up_hci_complete(struct hci_dev *hdev, u8 status, u16 opcode)
{
 BT_DBG("%s status 0x%02x", hdev->name, status);

 if (hci_conn_count(hdev) == 0) {
  cancel_delayed_work(&hdev->power_off);
  queue_work(hdev->req_workqueue, &hdev->power_off.work);
 }
}
