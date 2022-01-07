
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {struct hci_dev* private; } ;
struct hci_dev {int rpa; int irk; } ;
typedef int bdaddr_t ;


 int hci_copy_identity_address (struct hci_dev*,int *,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int seq_printf (struct seq_file*,char*,int *,int ,int,int ,int *) ;

__attribute__((used)) static int identity_show(struct seq_file *f, void *p)
{
 struct hci_dev *hdev = f->private;
 bdaddr_t addr;
 u8 addr_type;

 hci_dev_lock(hdev);

 hci_copy_identity_address(hdev, &addr, &addr_type);

 seq_printf(f, "%pMR (type %u) %*phN %pMR\n", &addr, addr_type,
     16, hdev->irk, &hdev->rpa);

 hci_dev_unlock(hdev);

 return 0;
}
