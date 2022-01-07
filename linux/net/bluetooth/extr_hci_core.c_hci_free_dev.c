
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dev; } ;


 int put_device (int *) ;

void hci_free_dev(struct hci_dev *hdev)
{

 put_device(&hdev->dev);
}
