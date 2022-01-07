
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_target {int dummy; } ;
struct nci_dev {scalar_t__ n_targets; int targets; } ;


 int NCI_MAX_DISCOVERED_TARGETS ;
 int memset (int ,int ,int) ;

void nci_clear_target_list(struct nci_dev *ndev)
{
 memset(ndev->targets, 0,
        (sizeof(struct nfc_target)*NCI_MAX_DISCOVERED_TARGETS));

 ndev->n_targets = 0;
}
