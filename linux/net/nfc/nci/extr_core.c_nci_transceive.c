
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nfc_target {int idx; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int flags; int target_active_prot; struct nci_conn_info* rf_conn_info; } ;
struct nci_conn_info {void* data_exchange_cb_context; int data_exchange_cb; } ;
typedef int data_exchange_cb_t ;


 int EBUSY ;
 int EINVAL ;
 int EPROTO ;
 int NCI_DATA_EXCHANGE ;
 int NCI_STATIC_RF_CONN_ID ;
 int clear_bit (int ,int *) ;
 int nci_send_data (struct nci_dev*,int ,struct sk_buff*) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int nci_transceive(struct nfc_dev *nfc_dev, struct nfc_target *target,
     struct sk_buff *skb,
     data_exchange_cb_t cb, void *cb_context)
{
 struct nci_dev *ndev = nfc_get_drvdata(nfc_dev);
 int rc;
 struct nci_conn_info *conn_info;

 conn_info = ndev->rf_conn_info;
 if (!conn_info)
  return -EPROTO;

 pr_debug("target_idx %d, len %d\n", target->idx, skb->len);

 if (!ndev->target_active_prot) {
  pr_err("unable to exchange data, no active target\n");
  return -EINVAL;
 }

 if (test_and_set_bit(NCI_DATA_EXCHANGE, &ndev->flags))
  return -EBUSY;


 conn_info->data_exchange_cb = cb;
 conn_info->data_exchange_cb_context = cb_context;

 rc = nci_send_data(ndev, NCI_STATIC_RF_CONN_ID, skb);
 if (rc)
  clear_bit(NCI_DATA_EXCHANGE, &ndev->flags);

 return rc;
}
