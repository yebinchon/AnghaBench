
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_conn {scalar_t__ type; } ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,struct hci_conn*,int ) ;
 scalar_t__ LE_LINK ;
 int bt_to_errno (int ) ;
 int l2cap_conn_del (struct hci_conn*,int ) ;

__attribute__((used)) static void l2cap_disconn_cfm(struct hci_conn *hcon, u8 reason)
{
 if (hcon->type != ACL_LINK && hcon->type != LE_LINK)
  return;

 BT_DBG("hcon %p reason %d", hcon, reason);

 l2cap_conn_del(hcon, bt_to_errno(reason));
}
