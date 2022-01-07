
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nci_rf_deactivate_ntf {int type; int reason; } ;
struct nci_dev {int state; int flags; int * rx_data_reassembly; int tx_q; struct nci_conn_info* rf_conn_info; } ;
struct nci_conn_info {int dummy; } ;


 int EIO ;
 int NCI_DATA_EXCHANGE ;




 int NCI_DISCOVERY ;
 int NCI_IDLE ;
 int NCI_STATIC_RF_CONN_ID ;
 int NCI_STATUS_OK ;
 int NCI_W4_HOST_SELECT ;
 int atomic_set (int *,int ) ;
 int kfree_skb (int *) ;
 int nci_clear_target_list (struct nci_dev*) ;
 int nci_data_exchange_complete (struct nci_dev*,int *,int ,int ) ;
 int nci_req_complete (struct nci_dev*,int ) ;
 int pr_debug (char*,int,int ) ;
 int skb_queue_purge (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nci_rf_deactivate_ntf_packet(struct nci_dev *ndev,
      struct sk_buff *skb)
{
 struct nci_conn_info *conn_info;
 struct nci_rf_deactivate_ntf *ntf = (void *) skb->data;

 pr_debug("entry, type 0x%x, reason 0x%x\n", ntf->type, ntf->reason);

 conn_info = ndev->rf_conn_info;
 if (!conn_info)
  return;


 skb_queue_purge(&ndev->tx_q);


 if (ndev->rx_data_reassembly) {
  kfree_skb(ndev->rx_data_reassembly);
  ndev->rx_data_reassembly = ((void*)0);
 }


 if (test_bit(NCI_DATA_EXCHANGE, &ndev->flags))
  nci_data_exchange_complete(ndev, ((void*)0), NCI_STATIC_RF_CONN_ID,
        -EIO);

 switch (ntf->type) {
 case 130:
  nci_clear_target_list(ndev);
  atomic_set(&ndev->state, NCI_IDLE);
  break;
 case 128:
 case 129:
  atomic_set(&ndev->state, NCI_W4_HOST_SELECT);
  break;
 case 131:
  nci_clear_target_list(ndev);
  atomic_set(&ndev->state, NCI_DISCOVERY);
  break;
 }

 nci_req_complete(ndev, NCI_STATUS_OK);
}
