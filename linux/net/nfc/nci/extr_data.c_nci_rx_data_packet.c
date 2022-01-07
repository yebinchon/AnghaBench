
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int * data; } ;
struct nci_dev {scalar_t__ target_active_prot; } ;
struct nci_conn_info {int dummy; } ;
typedef int __u8 ;


 int NCI_DATA_HDR_SIZE ;
 scalar_t__ NFC_PROTO_FELICA ;
 scalar_t__ NFC_PROTO_ISO15693 ;
 scalar_t__ NFC_PROTO_JEWEL ;
 scalar_t__ NFC_PROTO_MIFARE ;
 int nci_add_rx_data_frag (struct nci_dev*,struct sk_buff*,int ,int ,int ) ;
 int nci_conn_id (int *) ;
 struct nci_conn_info* nci_get_conn_info_by_conn_id (struct nci_dev*,int ) ;
 int nci_pbf (int *) ;
 int nci_plen (int *) ;
 int nci_to_errno (int ) ;
 int pr_debug (char*,...) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_trim (struct sk_buff*,int) ;

void nci_rx_data_packet(struct nci_dev *ndev, struct sk_buff *skb)
{
 __u8 pbf = nci_pbf(skb->data);
 __u8 status = 0;
 __u8 conn_id = nci_conn_id(skb->data);
 struct nci_conn_info *conn_info;

 pr_debug("len %d\n", skb->len);

 pr_debug("NCI RX: MT=data, PBF=%d, conn_id=%d, plen=%d\n",
   nci_pbf(skb->data),
   nci_conn_id(skb->data),
   nci_plen(skb->data));

 conn_info = nci_get_conn_info_by_conn_id(ndev, nci_conn_id(skb->data));
 if (!conn_info)
  return;


 skb_pull(skb, NCI_DATA_HDR_SIZE);

 if (ndev->target_active_prot == NFC_PROTO_MIFARE ||
     ndev->target_active_prot == NFC_PROTO_JEWEL ||
     ndev->target_active_prot == NFC_PROTO_FELICA ||
     ndev->target_active_prot == NFC_PROTO_ISO15693) {

  pr_debug("frame I/F => remove the status byte\n");
  status = skb->data[skb->len - 1];
  skb_trim(skb, (skb->len - 1));
 }

 nci_add_rx_data_frag(ndev, skb, pbf, conn_id, nci_to_errno(status));
}
