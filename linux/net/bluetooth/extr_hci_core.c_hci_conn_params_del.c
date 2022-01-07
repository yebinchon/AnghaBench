
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;
struct hci_conn_params {int dummy; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int *,int ) ;
 int hci_conn_params_free (struct hci_conn_params*) ;
 struct hci_conn_params* hci_conn_params_lookup (struct hci_dev*,int *,int ) ;
 int hci_update_background_scan (struct hci_dev*) ;

void hci_conn_params_del(struct hci_dev *hdev, bdaddr_t *addr, u8 addr_type)
{
 struct hci_conn_params *params;

 params = hci_conn_params_lookup(hdev, addr, addr_type);
 if (!params)
  return;

 hci_conn_params_free(params);

 hci_update_background_scan(hdev);

 BT_DBG("addr %pMR (type %u)", addr, addr_type);
}
