
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct nci_dev {TYPE_1__* nfc_dev; struct sk_buff* rx_data_reassembly; } ;
typedef int __u8 ;
struct TYPE_2__ {scalar_t__ rf_mode; } ;


 int ENOMEM ;
 int NCI_PBF_CONT ;
 scalar_t__ NFC_RF_TARGET ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,int) ;
 int nci_data_exchange_complete (struct nci_dev*,struct sk_buff*,int,int) ;
 int nfc_tm_data_received (TYPE_1__*,struct sk_buff*) ;
 int pr_err (char*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void nci_add_rx_data_frag(struct nci_dev *ndev,
     struct sk_buff *skb,
     __u8 pbf, __u8 conn_id, __u8 status)
{
 int reassembly_len;
 int err = 0;

 if (status) {
  err = status;
  goto exit;
 }

 if (ndev->rx_data_reassembly) {
  reassembly_len = ndev->rx_data_reassembly->len;


  if (skb_cow_head(skb, reassembly_len)) {
   pr_err("error adding room for accumulated rx data\n");

   kfree_skb(skb);
   skb = ((void*)0);

   kfree_skb(ndev->rx_data_reassembly);
   ndev->rx_data_reassembly = ((void*)0);

   err = -ENOMEM;
   goto exit;
  }


  memcpy(skb_push(skb, reassembly_len),
         ndev->rx_data_reassembly->data,
         reassembly_len);


  kfree_skb(ndev->rx_data_reassembly);
  ndev->rx_data_reassembly = ((void*)0);
 }

 if (pbf == NCI_PBF_CONT) {

  ndev->rx_data_reassembly = skb;
  return;
 }

exit:
 if (ndev->nfc_dev->rf_mode == NFC_RF_TARGET) {

  err = nfc_tm_data_received(ndev->nfc_dev, skb);
  if (err)
   pr_err("unable to handle received data\n");
 } else {
  nci_data_exchange_complete(ndev, skb, conn_id, err);
 }
}
