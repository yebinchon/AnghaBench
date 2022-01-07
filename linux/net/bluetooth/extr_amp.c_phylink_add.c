
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hci_dev {int dummy; } ;
struct hci_conn {int amp_mgr; int remote_id; int handle; int attempt; int state; } ;
struct amp_mgr {TYPE_2__* l2cap_conn; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {TYPE_1__* hcon; } ;
struct TYPE_3__ {int dst; } ;


 int AMP_LINK ;
 int BT_CONNECT ;
 int BT_DBG (char*,struct hci_conn*,int *) ;
 int HCI_ROLE_MASTER ;
 int HCI_ROLE_SLAVE ;
 int __next_handle (struct amp_mgr*) ;
 int amp_mgr_get (struct amp_mgr*) ;
 struct hci_conn* hci_conn_add (struct hci_dev*,int ,int *,int ) ;

struct hci_conn *phylink_add(struct hci_dev *hdev, struct amp_mgr *mgr,
        u8 remote_id, bool out)
{
 bdaddr_t *dst = &mgr->l2cap_conn->hcon->dst;
 struct hci_conn *hcon;
 u8 role = out ? HCI_ROLE_MASTER : HCI_ROLE_SLAVE;

 hcon = hci_conn_add(hdev, AMP_LINK, dst, role);
 if (!hcon)
  return ((void*)0);

 BT_DBG("hcon %p dst %pMR", hcon, dst);

 hcon->state = BT_CONNECT;
 hcon->attempt++;
 hcon->handle = __next_handle(mgr);
 hcon->remote_id = remote_id;
 hcon->amp_mgr = amp_mgr_get(mgr);

 return hcon;
}
