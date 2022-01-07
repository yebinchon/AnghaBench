
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct hci_conn {struct hci_dev* hdev; } ;


 int HCI_PRIVACY ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;

__attribute__((used)) static bool conn_use_rpa(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;

 return hci_dev_test_flag(hdev, HCI_PRIVACY);
}
