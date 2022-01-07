
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {int handle; int hdev; struct hci_conn* link; } ;
typedef int __u8 ;


 int BT_DBG (char*,struct hci_conn*) ;
 int hci_add_sco (struct hci_conn*,int ) ;
 int hci_conn_del (struct hci_conn*) ;
 int hci_connect_cfm (struct hci_conn*,int ) ;
 int hci_setup_sync (struct hci_conn*,int ) ;
 scalar_t__ lmp_esco_capable (int ) ;

void hci_sco_setup(struct hci_conn *conn, __u8 status)
{
 struct hci_conn *sco = conn->link;

 if (!sco)
  return;

 BT_DBG("hcon %p", conn);

 if (!status) {
  if (lmp_esco_capable(conn->hdev))
   hci_setup_sync(sco, conn->handle);
  else
   hci_add_sco(sco, conn->handle);
 } else {
  hci_connect_cfm(sco, status);
  hci_conn_del(sco);
 }
}
