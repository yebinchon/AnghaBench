
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct nci_dev {int tx_work; int tx_wq; int cur_conn_id; int tx_q; } ;
struct nci_conn_info {scalar_t__ max_pkt_payload_len; } ;
typedef int __u8 ;


 int EPROTO ;
 int NCI_PBF_LAST ;
 int kfree_skb (struct sk_buff*) ;
 struct nci_conn_info* nci_get_conn_info_by_conn_id (struct nci_dev*,int ) ;
 int nci_push_data_hdr (struct nci_dev*,int ,struct sk_buff*,int ) ;
 int nci_queue_tx_data_frags (struct nci_dev*,int ,struct sk_buff*) ;
 int pr_debug (char*,int ,scalar_t__) ;
 int pr_err (char*) ;
 int queue_work (int ,int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int nci_send_data(struct nci_dev *ndev, __u8 conn_id, struct sk_buff *skb)
{
 struct nci_conn_info *conn_info;
 int rc = 0;

 pr_debug("conn_id 0x%x, plen %d\n", conn_id, skb->len);

 conn_info = nci_get_conn_info_by_conn_id(ndev, conn_id);
 if (!conn_info) {
  rc = -EPROTO;
  goto free_exit;
 }


 if (skb->len <= conn_info->max_pkt_payload_len) {

  nci_push_data_hdr(ndev, conn_id, skb, NCI_PBF_LAST);

  skb_queue_tail(&ndev->tx_q, skb);
 } else {

  rc = nci_queue_tx_data_frags(ndev, conn_id, skb);
  if (rc) {
   pr_err("failed to fragment tx data packet\n");
   goto free_exit;
  }
 }

 ndev->cur_conn_id = conn_id;
 queue_work(ndev->tx_wq, &ndev->tx_work);

 goto exit;

free_exit:
 kfree_skb(skb);

exit:
 return rc;
}
