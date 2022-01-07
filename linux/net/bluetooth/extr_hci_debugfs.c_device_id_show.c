
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hci_dev* private; } ;
struct hci_dev {int devid_version; int devid_product; int devid_vendor; int devid_source; } ;


 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int device_id_show(struct seq_file *f, void *ptr)
{
 struct hci_dev *hdev = f->private;

 hci_dev_lock(hdev);
 seq_printf(f, "%4.4x:%4.4x:%4.4x:%4.4x\n", hdev->devid_source,
    hdev->devid_vendor, hdev->devid_product, hdev->devid_version);
 hci_dev_unlock(hdev);

 return 0;
}
