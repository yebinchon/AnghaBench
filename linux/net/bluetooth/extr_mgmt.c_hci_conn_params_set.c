
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int pend_le_conns; int pend_le_reports; } ;
struct hci_conn_params {int auto_connect; int action; int explicit_connect; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int *,int,int) ;
 int EIO ;





 struct hci_conn_params* hci_conn_params_add (struct hci_dev*,int *,int) ;
 int is_connected (struct hci_dev*,int *,int) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;

__attribute__((used)) static int hci_conn_params_set(struct hci_dev *hdev, bdaddr_t *addr,
          u8 addr_type, u8 auto_connect)
{
 struct hci_conn_params *params;

 params = hci_conn_params_add(hdev, addr, addr_type);
 if (!params)
  return -EIO;

 if (params->auto_connect == auto_connect)
  return 0;

 list_del_init(&params->action);

 switch (auto_connect) {
 case 130:
 case 129:



  if (params->explicit_connect)
   list_add(&params->action, &hdev->pend_le_conns);
  break;
 case 128:
  if (params->explicit_connect)
   list_add(&params->action, &hdev->pend_le_conns);
  else
   list_add(&params->action, &hdev->pend_le_reports);
  break;
 case 131:
 case 132:
  if (!is_connected(hdev, addr, addr_type))
   list_add(&params->action, &hdev->pend_le_conns);
  break;
 }

 params->auto_connect = auto_connect;

 BT_DBG("addr %pMR (type %u) auto_connect %u", addr, addr_type,
        auto_connect);

 return 0;
}
