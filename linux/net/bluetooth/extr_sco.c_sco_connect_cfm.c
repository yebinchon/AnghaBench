
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sco_conn {int dummy; } ;
struct hci_conn {scalar_t__ type; int dst; } ;
typedef int __u8 ;


 int BT_DBG (char*,struct hci_conn*,int *,int ) ;
 scalar_t__ ESCO_LINK ;
 scalar_t__ SCO_LINK ;
 int bt_to_errno (int ) ;
 struct sco_conn* sco_conn_add (struct hci_conn*) ;
 int sco_conn_del (struct hci_conn*,int ) ;
 int sco_conn_ready (struct sco_conn*) ;

__attribute__((used)) static void sco_connect_cfm(struct hci_conn *hcon, __u8 status)
{
 if (hcon->type != SCO_LINK && hcon->type != ESCO_LINK)
  return;

 BT_DBG("hcon %p bdaddr %pMR status %d", hcon, &hcon->dst, status);

 if (!status) {
  struct sco_conn *conn;

  conn = sco_conn_add(hcon);
  if (conn)
   sco_conn_ready(conn);
 } else
  sco_conn_del(hcon, bt_to_errno(status));
}
