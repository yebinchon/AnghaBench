
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct hci_dev {TYPE_1__ discovery; int name; } ;


 int BT_DBG (char*,int ,int,int) ;





 int hci_update_background_scan (struct hci_dev*) ;
 int mgmt_discovering (struct hci_dev*,int) ;

void hci_discovery_set_state(struct hci_dev *hdev, int state)
{
 int old_state = hdev->discovery.state;

 BT_DBG("%s state %u -> %u", hdev->name, hdev->discovery.state, state);

 if (old_state == state)
  return;

 hdev->discovery.state = state;

 switch (state) {
 case 129:
  hci_update_background_scan(hdev);

  if (old_state != 130)
   mgmt_discovering(hdev, 0);
  break;
 case 130:
  break;
 case 132:
  mgmt_discovering(hdev, 1);
  break;
 case 131:
  break;
 case 128:
  break;
 }
}
