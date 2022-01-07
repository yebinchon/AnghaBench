
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci_access {int dummy; } ;


 struct pci_dev* pci_acc_init (struct pci_access**,int ,int ,int,int,int,int) ;

struct pci_dev *pci_slot_func_init(struct pci_access **pacc, int slot,
           int func)
{
 return pci_acc_init(pacc, 0, 0, slot, func, -1, -1);
}
