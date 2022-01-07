
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nci_dev {int rx_work; int rx_wq; int rx_q; int flags; } ;


 int ENXIO ;
 int NCI_INIT ;
 int NCI_UP ;
 int kfree_skb (struct sk_buff*) ;
 int pr_debug (char*,int ) ;
 int queue_work (int ,int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;

int nci_recv_frame(struct nci_dev *ndev, struct sk_buff *skb)
{
 pr_debug("len %d\n", skb->len);

 if (!ndev || (!test_bit(NCI_UP, &ndev->flags) &&
     !test_bit(NCI_INIT, &ndev->flags))) {
  kfree_skb(skb);
  return -ENXIO;
 }


 skb_queue_tail(&ndev->rx_q, skb);
 queue_work(ndev->rx_wq, &ndev->rx_work);

 return 0;
}
