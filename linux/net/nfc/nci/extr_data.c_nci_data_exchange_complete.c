
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nci_dev {int flags; int data_timer; } ;
struct nci_conn_info {void* data_exchange_cb_context; int (* data_exchange_cb ) (void*,struct sk_buff*,int) ;} ;
typedef int (* data_exchange_cb_t ) (void*,struct sk_buff*,int) ;
typedef int __u8 ;


 int NCI_DATA_EXCHANGE ;
 int NCI_DATA_EXCHANGE_TO ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct nci_conn_info* nci_get_conn_info_by_conn_id (struct nci_dev*,int ) ;
 int pr_debug (char*,int ,int) ;
 int pr_err (char*) ;

void nci_data_exchange_complete(struct nci_dev *ndev, struct sk_buff *skb,
    __u8 conn_id, int err)
{
 struct nci_conn_info *conn_info;
 data_exchange_cb_t cb;
 void *cb_context;

 conn_info = nci_get_conn_info_by_conn_id(ndev, conn_id);
 if (!conn_info) {
  kfree_skb(skb);
  goto exit;
 }

 cb = conn_info->data_exchange_cb;
 cb_context = conn_info->data_exchange_cb_context;

 pr_debug("len %d, err %d\n", skb ? skb->len : 0, err);


 del_timer_sync(&ndev->data_timer);
 clear_bit(NCI_DATA_EXCHANGE_TO, &ndev->flags);

 if (cb) {

  cb(cb_context, skb, err);
 } else if (skb) {
  pr_err("no rx callback, dropping rx data...\n");


  kfree_skb(skb);
 }

exit:
 clear_bit(NCI_DATA_EXCHANGE, &ndev->flags);
}
