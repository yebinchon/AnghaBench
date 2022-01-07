
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int * data; } ;
struct TYPE_2__ {int nfcv_poll; int nfcf_poll; int nfcb_poll; int nfca_poll; } ;
struct nci_rf_discover_ntf {scalar_t__ rf_discovery_id; scalar_t__ rf_protocol; scalar_t__ rf_tech_and_mode; scalar_t__ rf_tech_specific_params_len; scalar_t__ ntf_type; TYPE_1__ rf_tech_specific_params; } ;
struct nci_dev {int n_targets; int targets; int nfc_dev; int state; } ;
typedef int __u8 ;


 scalar_t__ NCI_DISCOVER_NTF_TYPE_MORE ;




 int NCI_W4_ALL_DISCOVERIES ;
 int NCI_W4_HOST_SELECT ;
 int atomic_set (int *,int ) ;
 int nci_add_new_target (struct nci_dev*,struct nci_rf_discover_ntf*) ;
 int * nci_extract_rf_params_nfca_passive_poll (struct nci_dev*,int *,int *) ;
 int * nci_extract_rf_params_nfcb_passive_poll (struct nci_dev*,int *,int *) ;
 int * nci_extract_rf_params_nfcf_passive_poll (struct nci_dev*,int *,int *) ;
 int * nci_extract_rf_params_nfcv_passive_poll (struct nci_dev*,int *,int *) ;
 int nfc_targets_found (int ,int ,int ) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void nci_rf_discover_ntf_packet(struct nci_dev *ndev,
           struct sk_buff *skb)
{
 struct nci_rf_discover_ntf ntf;
 __u8 *data = skb->data;
 bool add_target = 1;

 ntf.rf_discovery_id = *data++;
 ntf.rf_protocol = *data++;
 ntf.rf_tech_and_mode = *data++;
 ntf.rf_tech_specific_params_len = *data++;

 pr_debug("rf_discovery_id %d\n", ntf.rf_discovery_id);
 pr_debug("rf_protocol 0x%x\n", ntf.rf_protocol);
 pr_debug("rf_tech_and_mode 0x%x\n", ntf.rf_tech_and_mode);
 pr_debug("rf_tech_specific_params_len %d\n",
   ntf.rf_tech_specific_params_len);

 if (ntf.rf_tech_specific_params_len > 0) {
  switch (ntf.rf_tech_and_mode) {
  case 131:
   data = nci_extract_rf_params_nfca_passive_poll(ndev,
    &(ntf.rf_tech_specific_params.nfca_poll), data);
   break;

  case 130:
   data = nci_extract_rf_params_nfcb_passive_poll(ndev,
    &(ntf.rf_tech_specific_params.nfcb_poll), data);
   break;

  case 129:
   data = nci_extract_rf_params_nfcf_passive_poll(ndev,
    &(ntf.rf_tech_specific_params.nfcf_poll), data);
   break;

  case 128:
   data = nci_extract_rf_params_nfcv_passive_poll(ndev,
    &(ntf.rf_tech_specific_params.nfcv_poll), data);
   break;

  default:
   pr_err("unsupported rf_tech_and_mode 0x%x\n",
          ntf.rf_tech_and_mode);
   data += ntf.rf_tech_specific_params_len;
   add_target = 0;
  }
 }

 ntf.ntf_type = *data++;
 pr_debug("ntf_type %d\n", ntf.ntf_type);

 if (add_target == 1)
  nci_add_new_target(ndev, &ntf);

 if (ntf.ntf_type == NCI_DISCOVER_NTF_TYPE_MORE) {
  atomic_set(&ndev->state, NCI_W4_ALL_DISCOVERIES);
 } else {
  atomic_set(&ndev->state, NCI_W4_HOST_SELECT);
  nfc_targets_found(ndev->nfc_dev, ndev->targets,
      ndev->n_targets);
 }
}
