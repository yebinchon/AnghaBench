
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int debugfs; } ;
struct hci_conn {int handle; int debugfs; struct hci_dev* hdev; } ;
typedef int name ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int debugfs_create_dir (char*,int ) ;
 int snprintf (char*,int,char*,int) ;

void hci_debugfs_create_conn(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;
 char name[6];

 if (IS_ERR_OR_NULL(hdev->debugfs))
  return;

 snprintf(name, sizeof(name), "%u", conn->handle);
 conn->debugfs = debugfs_create_dir(name, hdev->debugfs);
}
