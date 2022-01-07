
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int acl_cnt; int le_cnt; scalar_t__ le_pkts; int name; } ;
struct hci_conn {scalar_t__ type; int data_q; scalar_t__ amp_mgr; struct hci_conn* link; scalar_t__ sent; int le_conn_timeout; int idle_work; int auto_accept_work; int disc_work; int handle; struct hci_dev* hdev; } ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,int ,struct hci_conn*,int ) ;
 scalar_t__ LE_LINK ;
 int amp_mgr_put (scalar_t__) ;
 int cancel_delayed_work (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int hci_conn_cleanup (struct hci_conn*) ;
 int hci_conn_drop (struct hci_conn*) ;
 int skb_queue_purge (int *) ;

int hci_conn_del(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;

 BT_DBG("%s hcon %p handle %d", hdev->name, conn, conn->handle);

 cancel_delayed_work_sync(&conn->disc_work);
 cancel_delayed_work_sync(&conn->auto_accept_work);
 cancel_delayed_work_sync(&conn->idle_work);

 if (conn->type == ACL_LINK) {
  struct hci_conn *sco = conn->link;
  if (sco)
   sco->link = ((void*)0);


  hdev->acl_cnt += conn->sent;
 } else if (conn->type == LE_LINK) {
  cancel_delayed_work(&conn->le_conn_timeout);

  if (hdev->le_pkts)
   hdev->le_cnt += conn->sent;
  else
   hdev->acl_cnt += conn->sent;
 } else {
  struct hci_conn *acl = conn->link;
  if (acl) {
   acl->link = ((void*)0);
   hci_conn_drop(acl);
  }
 }

 if (conn->amp_mgr)
  amp_mgr_put(conn->amp_mgr);

 skb_queue_purge(&conn->data_q);






 hci_conn_cleanup(conn);

 return 0;
}
