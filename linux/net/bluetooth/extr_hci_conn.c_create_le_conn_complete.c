
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hci_dev {int dummy; } ;
struct hci_conn {int dummy; } ;


 int bt_dev_err (struct hci_dev*,char*,int ) ;
 int hci_connect_le_scan_cleanup (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_le_conn_failed (struct hci_conn*,int ) ;
 struct hci_conn* hci_lookup_le_connect (struct hci_dev*) ;

__attribute__((used)) static void create_le_conn_complete(struct hci_dev *hdev, u8 status, u16 opcode)
{
 struct hci_conn *conn;

 hci_dev_lock(hdev);

 conn = hci_lookup_le_connect(hdev);

 if (!status) {
  hci_connect_le_scan_cleanup(conn);
  goto done;
 }

 bt_dev_err(hdev, "request failed to create LE connection: "
     "status 0x%2.2x", status);

 if (!conn)
  goto done;

 hci_le_conn_failed(conn, status);

done:
 hci_dev_unlock(hdev);
}
