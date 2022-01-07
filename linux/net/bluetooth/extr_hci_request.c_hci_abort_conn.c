
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_request {int dummy; } ;
struct hci_conn {int hdev; } ;


 int ENODATA ;
 int __hci_abort_conn (struct hci_request*,struct hci_conn*,int ) ;
 int abort_conn_complete ;
 int bt_dev_err (int ,char*,int) ;
 int hci_req_init (struct hci_request*,int ) ;
 int hci_req_run (struct hci_request*,int ) ;

int hci_abort_conn(struct hci_conn *conn, u8 reason)
{
 struct hci_request req;
 int err;

 hci_req_init(&req, conn->hdev);

 __hci_abort_conn(&req, conn, reason);

 err = hci_req_run(&req, abort_conn_complete);
 if (err && err != -ENODATA) {
  bt_dev_err(conn->hdev, "failed to run HCI request: err %d", err);
  return err;
 }

 return 0;
}
