
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dummy; } ;
struct nci_dev {int state; } ;


 int NCI_DEACTIVATE_TYPE_IDLE_MODE ;
 scalar_t__ NCI_DISCOVERY ;
 int NCI_RF_DEACTIVATE_TIMEOUT ;
 scalar_t__ NCI_W4_ALL_DISCOVERIES ;
 scalar_t__ atomic_read (int *) ;
 int msecs_to_jiffies (int ) ;
 int nci_request (struct nci_dev*,int ,int ,int ) ;
 int nci_rf_deactivate_req ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static void nci_stop_poll(struct nfc_dev *nfc_dev)
{
 struct nci_dev *ndev = nfc_get_drvdata(nfc_dev);

 if ((atomic_read(&ndev->state) != NCI_DISCOVERY) &&
     (atomic_read(&ndev->state) != NCI_W4_ALL_DISCOVERIES)) {
  pr_err("unable to stop poll, since poll is not active\n");
  return;
 }

 nci_request(ndev, nci_rf_deactivate_req, NCI_DEACTIVATE_TYPE_IDLE_MODE,
      msecs_to_jiffies(NCI_RF_DEACTIVATE_TIMEOUT));
}
