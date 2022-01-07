
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int (* notify ) (struct hci_dev*,int ) ;} ;
struct hci_conn {int debugfs; int dst_type; int dst; struct hci_dev* hdev; int flags; } ;


 int HCI_CONN_PARAM_REMOVAL_PEND ;
 int HCI_NOTIFY_CONN_DEL ;
 int debugfs_remove_recursive (int ) ;
 int hci_chan_list_flush (struct hci_conn*) ;
 int hci_conn_del_sysfs (struct hci_conn*) ;
 int hci_conn_hash_del (struct hci_dev*,struct hci_conn*) ;
 int hci_conn_params_del (struct hci_dev*,int *,int ) ;
 int hci_conn_put (struct hci_conn*) ;
 int hci_dev_put (struct hci_dev*) ;
 int stub1 (struct hci_dev*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_conn_cleanup(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;

 if (test_bit(HCI_CONN_PARAM_REMOVAL_PEND, &conn->flags))
  hci_conn_params_del(conn->hdev, &conn->dst, conn->dst_type);

 hci_chan_list_flush(conn);

 hci_conn_hash_del(hdev, conn);

 if (hdev->notify)
  hdev->notify(hdev, HCI_NOTIFY_CONN_DEL);

 hci_conn_del_sysfs(conn);

 debugfs_remove_recursive(conn->debugfs);

 hci_dev_put(hdev);

 hci_conn_put(conn);
}
