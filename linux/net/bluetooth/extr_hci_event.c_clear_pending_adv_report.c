
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discovery_state {scalar_t__ last_adv_data_len; int last_adv_addr; } ;
struct hci_dev {struct discovery_state discovery; } ;


 int BDADDR_ANY ;
 int bacpy (int *,int ) ;

__attribute__((used)) static void clear_pending_adv_report(struct hci_dev *hdev)
{
 struct discovery_state *d = &hdev->discovery;

 bacpy(&d->last_adv_addr, BDADDR_ANY);
 d->last_adv_data_len = 0;
}
