
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_irk {int addr_type; int bdaddr; } ;
struct hci_dev {int pend_le_reports; int pend_le_conns; } ;
struct hci_conn_params {int explicit_connect; int auto_connect; int action; } ;
struct hci_conn {int dst_type; int dst; struct hci_dev* hdev; } ;
typedef int bdaddr_t ;






 int hci_conn_params_del (struct hci_dev*,int *,int ) ;
 struct smp_irk* hci_get_irk (struct hci_dev*,int *,int ) ;
 struct hci_conn_params* hci_pend_le_action_lookup (int *,int *,int ) ;
 int hci_update_background_scan (struct hci_dev*) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;

__attribute__((used)) static void hci_connect_le_scan_cleanup(struct hci_conn *conn)
{
 struct hci_conn_params *params;
 struct hci_dev *hdev = conn->hdev;
 struct smp_irk *irk;
 bdaddr_t *bdaddr;
 u8 bdaddr_type;

 bdaddr = &conn->dst;
 bdaddr_type = conn->dst_type;


 irk = hci_get_irk(hdev, bdaddr, bdaddr_type);
 if (irk) {
  bdaddr = &irk->bdaddr;
  bdaddr_type = irk->addr_type;
 }

 params = hci_pend_le_action_lookup(&hdev->pend_le_conns, bdaddr,
        bdaddr_type);
 if (!params || !params->explicit_connect)
  return;






 params->explicit_connect = 0;

 list_del_init(&params->action);

 switch (params->auto_connect) {
 case 129:
  hci_conn_params_del(hdev, bdaddr, bdaddr_type);

  return;
 case 130:
 case 131:
  list_add(&params->action, &hdev->pend_le_conns);
  break;
 case 128:
  list_add(&params->action, &hdev->pend_le_reports);
  break;
 default:
  break;
 }

 hci_update_background_scan(hdev);
}
