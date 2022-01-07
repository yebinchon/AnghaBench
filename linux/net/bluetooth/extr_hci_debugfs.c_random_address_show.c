
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hci_dev* private; } ;
struct hci_dev {int random_addr; } ;


 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int seq_printf (struct seq_file*,char*,int *) ;

__attribute__((used)) static int random_address_show(struct seq_file *f, void *p)
{
 struct hci_dev *hdev = f->private;

 hci_dev_lock(hdev);
 seq_printf(f, "%pMR\n", &hdev->random_addr);
 hci_dev_unlock(hdev);

 return 0;
}
