
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nci_rf_discover_param {int im_protocols; int tm_protocols; } ;
struct nci_rf_disc_cmd {int num_disc_configs; TYPE_1__* disc_configs; } ;
struct nci_dev {int dummy; } ;
struct disc_config {int dummy; } ;
struct TYPE_2__ {int frequency; int rf_tech_and_mode; } ;


 int NCI_MAX_NUM_RF_CONFIGS ;
 int NCI_NFC_A_PASSIVE_LISTEN_MODE ;
 int NCI_NFC_A_PASSIVE_POLL_MODE ;
 int NCI_NFC_B_PASSIVE_POLL_MODE ;
 int NCI_NFC_F_PASSIVE_LISTEN_MODE ;
 int NCI_NFC_F_PASSIVE_POLL_MODE ;
 int NCI_NFC_V_PASSIVE_POLL_MODE ;
 int NCI_OP_RF_DISCOVER_CMD ;
 int NFC_PROTO_FELICA_MASK ;
 int NFC_PROTO_ISO14443_B_MASK ;
 int NFC_PROTO_ISO14443_MASK ;
 int NFC_PROTO_ISO15693_MASK ;
 int NFC_PROTO_JEWEL_MASK ;
 int NFC_PROTO_MIFARE_MASK ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int nci_send_cmd (struct nci_dev*,int ,int,struct nci_rf_disc_cmd*) ;

__attribute__((used)) static void nci_rf_discover_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_rf_discover_param *param =
  (struct nci_rf_discover_param *)opt;
 struct nci_rf_disc_cmd cmd;

 cmd.num_disc_configs = 0;

 if ((cmd.num_disc_configs < NCI_MAX_NUM_RF_CONFIGS) &&
     (param->im_protocols & NFC_PROTO_JEWEL_MASK ||
      param->im_protocols & NFC_PROTO_MIFARE_MASK ||
      param->im_protocols & NFC_PROTO_ISO14443_MASK ||
      param->im_protocols & NFC_PROTO_NFC_DEP_MASK)) {
  cmd.disc_configs[cmd.num_disc_configs].rf_tech_and_mode =
   NCI_NFC_A_PASSIVE_POLL_MODE;
  cmd.disc_configs[cmd.num_disc_configs].frequency = 1;
  cmd.num_disc_configs++;
 }

 if ((cmd.num_disc_configs < NCI_MAX_NUM_RF_CONFIGS) &&
     (param->im_protocols & NFC_PROTO_ISO14443_B_MASK)) {
  cmd.disc_configs[cmd.num_disc_configs].rf_tech_and_mode =
   NCI_NFC_B_PASSIVE_POLL_MODE;
  cmd.disc_configs[cmd.num_disc_configs].frequency = 1;
  cmd.num_disc_configs++;
 }

 if ((cmd.num_disc_configs < NCI_MAX_NUM_RF_CONFIGS) &&
     (param->im_protocols & NFC_PROTO_FELICA_MASK ||
      param->im_protocols & NFC_PROTO_NFC_DEP_MASK)) {
  cmd.disc_configs[cmd.num_disc_configs].rf_tech_and_mode =
   NCI_NFC_F_PASSIVE_POLL_MODE;
  cmd.disc_configs[cmd.num_disc_configs].frequency = 1;
  cmd.num_disc_configs++;
 }

 if ((cmd.num_disc_configs < NCI_MAX_NUM_RF_CONFIGS) &&
     (param->im_protocols & NFC_PROTO_ISO15693_MASK)) {
  cmd.disc_configs[cmd.num_disc_configs].rf_tech_and_mode =
   NCI_NFC_V_PASSIVE_POLL_MODE;
  cmd.disc_configs[cmd.num_disc_configs].frequency = 1;
  cmd.num_disc_configs++;
 }

 if ((cmd.num_disc_configs < NCI_MAX_NUM_RF_CONFIGS - 1) &&
     (param->tm_protocols & NFC_PROTO_NFC_DEP_MASK)) {
  cmd.disc_configs[cmd.num_disc_configs].rf_tech_and_mode =
   NCI_NFC_A_PASSIVE_LISTEN_MODE;
  cmd.disc_configs[cmd.num_disc_configs].frequency = 1;
  cmd.num_disc_configs++;
  cmd.disc_configs[cmd.num_disc_configs].rf_tech_and_mode =
   NCI_NFC_F_PASSIVE_LISTEN_MODE;
  cmd.disc_configs[cmd.num_disc_configs].frequency = 1;
  cmd.num_disc_configs++;
 }

 nci_send_cmd(ndev, NCI_OP_RF_DISCOVER_CMD,
       (1 + (cmd.num_disc_configs * sizeof(struct disc_config))),
       &cmd);
}
