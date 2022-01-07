
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmit; } ;
struct qrtr_tun {TYPE_1__ ep; int readq; int queue; } ;
struct inode {int dummy; } ;
struct file {struct qrtr_tun* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QRTR_EP_NID_AUTO ;
 int init_waitqueue_head (int *) ;
 struct qrtr_tun* kzalloc (int,int ) ;
 int qrtr_endpoint_register (TYPE_1__*,int ) ;
 int qrtr_tun_send ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int qrtr_tun_open(struct inode *inode, struct file *filp)
{
 struct qrtr_tun *tun;

 tun = kzalloc(sizeof(*tun), GFP_KERNEL);
 if (!tun)
  return -ENOMEM;

 skb_queue_head_init(&tun->queue);
 init_waitqueue_head(&tun->readq);

 tun->ep.xmit = qrtr_tun_send;

 filp->private_data = tun;

 return qrtr_endpoint_register(&tun->ep, QRTR_EP_NID_AUTO);
}
