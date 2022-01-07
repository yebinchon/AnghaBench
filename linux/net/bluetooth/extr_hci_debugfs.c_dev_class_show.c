
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hci_dev* private; } ;
struct hci_dev {int * dev_class; } ;


 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static int dev_class_show(struct seq_file *f, void *ptr)
{
 struct hci_dev *hdev = f->private;

 hci_dev_lock(hdev);
 seq_printf(f, "0x%.2x%.2x%.2x\n", hdev->dev_class[2],
     hdev->dev_class[1], hdev->dev_class[0]);
 hci_dev_unlock(hdev);

 return 0;
}
