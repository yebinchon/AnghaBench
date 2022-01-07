
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nci_hci_dev {int gate2pipe; TYPE_1__* pipes; } ;
struct TYPE_2__ {int host; int gate; } ;


 int NCI_HCI_INVALID_GATE ;
 int NCI_HCI_INVALID_HOST ;
 int NCI_HCI_INVALID_PIPE ;
 int NCI_HCI_MAX_PIPES ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void nci_hci_reset_pipes(struct nci_hci_dev *hdev)
{
 int i;

 for (i = 0; i < NCI_HCI_MAX_PIPES; i++) {
  hdev->pipes[i].gate = NCI_HCI_INVALID_GATE;
  hdev->pipes[i].host = NCI_HCI_INVALID_HOST;
 }
 memset(hdev->gate2pipe, NCI_HCI_INVALID_PIPE, sizeof(hdev->gate2pipe));
}
