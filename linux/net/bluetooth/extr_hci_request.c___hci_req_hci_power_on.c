
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;


 int HCI_CMD_TIMEOUT ;
 int __hci_req_sync (struct hci_dev*,int ,int ,int ,int *) ;
 int powered_update_hci ;
 int smp_register (struct hci_dev*) ;

int __hci_req_hci_power_on(struct hci_dev *hdev)
{





 smp_register(hdev);

 return __hci_req_sync(hdev, powered_update_hci, 0, HCI_CMD_TIMEOUT,
         ((void*)0));
}
