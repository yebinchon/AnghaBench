
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int pend_le_conns; } ;
struct hci_conn_params {scalar_t__ auto_connect; int explicit_connect; int action; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int *,int ,scalar_t__) ;
 int EISCONN ;
 int ENOMEM ;
 scalar_t__ HCI_AUTO_CONN_DISABLED ;
 scalar_t__ HCI_AUTO_CONN_EXPLICIT ;
 scalar_t__ HCI_AUTO_CONN_REPORT ;
 struct hci_conn_params* hci_conn_params_add (struct hci_dev*,int *,int ) ;
 struct hci_conn_params* hci_conn_params_lookup (struct hci_dev*,int *,int ) ;
 scalar_t__ is_connected (struct hci_dev*,int *,int ) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;

__attribute__((used)) static int hci_explicit_conn_params_set(struct hci_dev *hdev,
     bdaddr_t *addr, u8 addr_type)
{
 struct hci_conn_params *params;

 if (is_connected(hdev, addr, addr_type))
  return -EISCONN;

 params = hci_conn_params_lookup(hdev, addr, addr_type);
 if (!params) {
  params = hci_conn_params_add(hdev, addr, addr_type);
  if (!params)
   return -ENOMEM;





  params->auto_connect = HCI_AUTO_CONN_EXPLICIT;
 }


 if (params->auto_connect == HCI_AUTO_CONN_DISABLED ||
     params->auto_connect == HCI_AUTO_CONN_REPORT ||
     params->auto_connect == HCI_AUTO_CONN_EXPLICIT) {
  list_del_init(&params->action);
  list_add(&params->action, &hdev->pend_le_conns);
 }

 params->explicit_connect = 1;

 BT_DBG("addr %pMR (type %u) auto_connect %u", addr, addr_type,
        params->auto_connect);

 return 0;
}
