
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_target {scalar_t__ logical_idx; } ;
struct nci_rf_discover_ntf {scalar_t__ rf_discovery_id; int rf_tech_specific_params; int rf_tech_and_mode; int rf_protocol; } ;
struct nci_dev {int n_targets; struct nfc_target* targets; } ;


 int NCI_MAX_DISCOVERED_TARGETS ;
 int nci_add_new_protocol (struct nci_dev*,struct nfc_target*,int ,int ,int *) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void nci_add_new_target(struct nci_dev *ndev,
          struct nci_rf_discover_ntf *ntf)
{
 struct nfc_target *target;
 int i, rc;

 for (i = 0; i < ndev->n_targets; i++) {
  target = &ndev->targets[i];
  if (target->logical_idx == ntf->rf_discovery_id) {

   nci_add_new_protocol(ndev, target, ntf->rf_protocol,
          ntf->rf_tech_and_mode,
          &ntf->rf_tech_specific_params);
   return;
  }
 }


 if (ndev->n_targets == NCI_MAX_DISCOVERED_TARGETS) {
  pr_debug("not enough room, ignoring new target...\n");
  return;
 }

 target = &ndev->targets[ndev->n_targets];

 rc = nci_add_new_protocol(ndev, target, ntf->rf_protocol,
      ntf->rf_tech_and_mode,
      &ntf->rf_tech_specific_params);
 if (!rc) {
  target->logical_idx = ntf->rf_discovery_id;
  ndev->n_targets++;

  pr_debug("logical idx %d, n_targets %d\n", target->logical_idx,
    ndev->n_targets);
 }
}
