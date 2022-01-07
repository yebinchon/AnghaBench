
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nci_dev {int dummy; } ;
struct nci_data_hdr {int plen; scalar_t__ rfu; int conn_id; } ;
typedef int __u8 ;


 int NCI_DATA_HDR_SIZE ;
 int NCI_MT_DATA_PKT ;
 int nci_mt_set (int *,int ) ;
 int nci_pbf_set (int *,int ) ;
 struct nci_data_hdr* skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static inline void nci_push_data_hdr(struct nci_dev *ndev,
         __u8 conn_id,
         struct sk_buff *skb,
         __u8 pbf)
{
 struct nci_data_hdr *hdr;
 int plen = skb->len;

 hdr = skb_push(skb, NCI_DATA_HDR_SIZE);
 hdr->conn_id = conn_id;
 hdr->rfu = 0;
 hdr->plen = plen;

 nci_mt_set((__u8 *)hdr, NCI_MT_DATA_PKT);
 nci_pbf_set((__u8 *)hdr, pbf);
}
