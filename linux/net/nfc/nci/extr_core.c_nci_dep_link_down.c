
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {scalar_t__ rf_mode; } ;
struct nci_dev {int state; } ;


 int NCI_DEACTIVATE_TYPE_IDLE_MODE ;
 scalar_t__ NCI_DISCOVERY ;
 scalar_t__ NCI_LISTEN_ACTIVE ;
 int NCI_RF_DEACTIVATE_TIMEOUT ;
 scalar_t__ NFC_RF_INITIATOR ;
 scalar_t__ atomic_read (int *) ;
 int msecs_to_jiffies (int ) ;
 int nci_deactivate_target (struct nfc_dev*,int *,int ) ;
 int nci_request (struct nci_dev*,int ,int ,int ) ;
 int nci_rf_deactivate_req ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_tm_deactivated (struct nfc_dev*) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;

__attribute__((used)) static int nci_dep_link_down(struct nfc_dev *nfc_dev)
{
 struct nci_dev *ndev = nfc_get_drvdata(nfc_dev);
 int rc;

 pr_debug("entry\n");

 if (nfc_dev->rf_mode == NFC_RF_INITIATOR) {
  nci_deactivate_target(nfc_dev, ((void*)0), NCI_DEACTIVATE_TYPE_IDLE_MODE);
 } else {
  if (atomic_read(&ndev->state) == NCI_LISTEN_ACTIVE ||
      atomic_read(&ndev->state) == NCI_DISCOVERY) {
   nci_request(ndev, nci_rf_deactivate_req, 0,
    msecs_to_jiffies(NCI_RF_DEACTIVATE_TIMEOUT));
  }

  rc = nfc_tm_deactivated(nfc_dev);
  if (rc)
   pr_err("error when signaling tm deactivation\n");
 }

 return 0;
}
