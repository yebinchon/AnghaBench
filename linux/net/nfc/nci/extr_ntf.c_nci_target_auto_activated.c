
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_target {int logical_idx; } ;
struct nci_rf_intf_activated_ntf {int rf_discovery_id; int rf_tech_specific_params; int activation_rf_tech_and_mode; int rf_protocol; } ;
struct nci_dev {size_t n_targets; struct nfc_target* targets; int nfc_dev; } ;


 int nci_add_new_protocol (struct nci_dev*,struct nfc_target*,int ,int ,int *) ;
 int nfc_targets_found (int ,struct nfc_target*,size_t) ;
 int pr_debug (char*,int ,size_t) ;

__attribute__((used)) static void nci_target_auto_activated(struct nci_dev *ndev,
          struct nci_rf_intf_activated_ntf *ntf)
{
 struct nfc_target *target;
 int rc;

 target = &ndev->targets[ndev->n_targets];

 rc = nci_add_new_protocol(ndev, target, ntf->rf_protocol,
      ntf->activation_rf_tech_and_mode,
      &ntf->rf_tech_specific_params);
 if (rc)
  return;

 target->logical_idx = ntf->rf_discovery_id;
 ndev->n_targets++;

 pr_debug("logical idx %d, n_targets %d\n",
   target->logical_idx, ndev->n_targets);

 nfc_targets_found(ndev->nfc_dev, ndev->targets, ndev->n_targets);
}
