
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_irk {int rpa; int val; int list; int addr_type; int bdaddr; } ;
struct hci_dev {int identity_resolving_keys; } ;
typedef int bdaddr_t ;


 int GFP_KERNEL ;
 int bacpy (int *,int *) ;
 struct smp_irk* hci_find_irk_by_addr (struct hci_dev*,int *,int ) ;
 struct smp_irk* kzalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int memcpy (int ,int *,int) ;

struct smp_irk *hci_add_irk(struct hci_dev *hdev, bdaddr_t *bdaddr,
       u8 addr_type, u8 val[16], bdaddr_t *rpa)
{
 struct smp_irk *irk;

 irk = hci_find_irk_by_addr(hdev, bdaddr, addr_type);
 if (!irk) {
  irk = kzalloc(sizeof(*irk), GFP_KERNEL);
  if (!irk)
   return ((void*)0);

  bacpy(&irk->bdaddr, bdaddr);
  irk->addr_type = addr_type;

  list_add_rcu(&irk->list, &hdev->identity_resolving_keys);
 }

 memcpy(irk->val, val, 16);
 bacpy(&irk->rpa, rpa);

 return irk;
}
