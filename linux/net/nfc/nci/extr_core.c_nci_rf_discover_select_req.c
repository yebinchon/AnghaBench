
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_rf_discover_select_param {int rf_protocol; int rf_discovery_id; } ;
struct nci_rf_discover_select_cmd {int rf_protocol; int rf_interface; int rf_discovery_id; } ;
struct nci_dev {int dummy; } ;


 int NCI_OP_RF_DISCOVER_SELECT_CMD ;
 int NCI_RF_INTERFACE_FRAME ;
 int NCI_RF_INTERFACE_ISO_DEP ;
 int NCI_RF_INTERFACE_NFC_DEP ;


 int nci_send_cmd (struct nci_dev*,int ,int,struct nci_rf_discover_select_cmd*) ;

__attribute__((used)) static void nci_rf_discover_select_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_rf_discover_select_param *param =
  (struct nci_rf_discover_select_param *)opt;
 struct nci_rf_discover_select_cmd cmd;

 cmd.rf_discovery_id = param->rf_discovery_id;
 cmd.rf_protocol = param->rf_protocol;

 switch (cmd.rf_protocol) {
 case 129:
  cmd.rf_interface = NCI_RF_INTERFACE_ISO_DEP;
  break;

 case 128:
  cmd.rf_interface = NCI_RF_INTERFACE_NFC_DEP;
  break;

 default:
  cmd.rf_interface = NCI_RF_INTERFACE_FRAME;
  break;
 }

 nci_send_cmd(ndev, NCI_OP_RF_DISCOVER_SELECT_CMD,
       sizeof(struct nci_rf_discover_select_cmd), &cmd);
}
