
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;


 int NCI_STATIC_RF_CONN_ID ;
 int nci_send_data (struct nci_dev*,int ,struct sk_buff*) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static int nci_tm_send(struct nfc_dev *nfc_dev, struct sk_buff *skb)
{
 struct nci_dev *ndev = nfc_get_drvdata(nfc_dev);
 int rc;

 rc = nci_send_data(ndev, NCI_STATIC_RF_CONN_ID, skb);
 if (rc)
  pr_err("unable to send data\n");

 return rc;
}
