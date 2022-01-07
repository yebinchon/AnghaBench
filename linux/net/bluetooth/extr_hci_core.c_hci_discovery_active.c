
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discovery_state {int state; } ;
struct hci_dev {struct discovery_state discovery; } ;





bool hci_discovery_active(struct hci_dev *hdev)
{
 struct discovery_state *discov = &hdev->discovery;

 switch (discov->state) {
 case 129:
 case 128:
  return 1;

 default:
  return 0;
 }
}
