
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {scalar_t__ type; } ;
typedef int __u8 ;


 int BT_DBG (char*,struct hci_conn*,int ) ;
 scalar_t__ ESCO_LINK ;
 scalar_t__ SCO_LINK ;
 int bt_to_errno (int ) ;
 int sco_conn_del (struct hci_conn*,int ) ;

__attribute__((used)) static void sco_disconn_cfm(struct hci_conn *hcon, __u8 reason)
{
 if (hcon->type != SCO_LINK && hcon->type != ESCO_LINK)
  return;

 BT_DBG("hcon %p reason %d", hcon, reason);

 sco_conn_del(hcon, bt_to_errno(reason));
}
