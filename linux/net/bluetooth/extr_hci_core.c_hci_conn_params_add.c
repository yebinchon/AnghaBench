
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int le_supv_timeout; int le_conn_latency; int le_conn_max_interval; int le_conn_min_interval; int le_conn_params; } ;
struct hci_conn_params {int auto_connect; int supervision_timeout; int conn_latency; int conn_max_interval; int conn_min_interval; int action; int list; int addr_type; int addr; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int *,int ) ;
 int GFP_KERNEL ;
 int HCI_AUTO_CONN_DISABLED ;
 int INIT_LIST_HEAD (int *) ;
 int bacpy (int *,int *) ;
 int bt_dev_err (struct hci_dev*,char*) ;
 struct hci_conn_params* hci_conn_params_lookup (struct hci_dev*,int *,int ) ;
 struct hci_conn_params* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

struct hci_conn_params *hci_conn_params_add(struct hci_dev *hdev,
         bdaddr_t *addr, u8 addr_type)
{
 struct hci_conn_params *params;

 params = hci_conn_params_lookup(hdev, addr, addr_type);
 if (params)
  return params;

 params = kzalloc(sizeof(*params), GFP_KERNEL);
 if (!params) {
  bt_dev_err(hdev, "out of memory");
  return ((void*)0);
 }

 bacpy(&params->addr, addr);
 params->addr_type = addr_type;

 list_add(&params->list, &hdev->le_conn_params);
 INIT_LIST_HEAD(&params->action);

 params->conn_min_interval = hdev->le_conn_min_interval;
 params->conn_max_interval = hdev->le_conn_max_interval;
 params->conn_latency = hdev->le_conn_latency;
 params->supervision_timeout = hdev->le_supv_timeout;
 params->auto_connect = HCI_AUTO_CONN_DISABLED;

 BT_DBG("addr %pMR (type %u)", addr, addr_type);

 return params;
}
