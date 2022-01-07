
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discovery_state {int last_adv_addr; } ;
struct hci_dev {struct discovery_state discovery; } ;


 int BDADDR_ANY ;
 int bacmp (int *,int ) ;

__attribute__((used)) static bool has_pending_adv_report(struct hci_dev *hdev)
{
 struct discovery_state *d = &hdev->discovery;

 return bacmp(&d->last_adv_addr, BDADDR_ANY);
}
