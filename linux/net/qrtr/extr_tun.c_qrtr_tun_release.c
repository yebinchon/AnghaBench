
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct qrtr_tun {int queue; int ep; } ;
struct inode {int dummy; } ;
struct file {struct qrtr_tun* private_data; } ;


 int kfree (struct qrtr_tun*) ;
 int kfree_skb (struct sk_buff*) ;
 int qrtr_endpoint_unregister (int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static int qrtr_tun_release(struct inode *inode, struct file *filp)
{
 struct qrtr_tun *tun = filp->private_data;
 struct sk_buff *skb;

 qrtr_endpoint_unregister(&tun->ep);


 while (!skb_queue_empty(&tun->queue)) {
  skb = skb_dequeue(&tun->queue);
  kfree_skb(skb);
 }

 kfree(tun);

 return 0;
}
