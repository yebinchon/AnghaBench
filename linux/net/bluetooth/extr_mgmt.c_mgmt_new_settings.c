
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;


 int new_settings (struct hci_dev*,int *) ;

int mgmt_new_settings(struct hci_dev *hdev)
{
 return new_settings(hdev, ((void*)0));
}
