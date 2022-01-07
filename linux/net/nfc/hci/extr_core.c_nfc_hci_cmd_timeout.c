
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nfc_hci_dev {int msg_tx_work; } ;


 int cmd_timer ;
 struct nfc_hci_dev* from_timer (int ,struct timer_list*,int ) ;
 struct nfc_hci_dev* hdev ;
 int schedule_work (int *) ;

__attribute__((used)) static void nfc_hci_cmd_timeout(struct timer_list *t)
{
 struct nfc_hci_dev *hdev = from_timer(hdev, t, cmd_timer);

 schedule_work(&hdev->msg_tx_work);
}
