
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_tun {int queue; int readq; } ;
struct file {struct qrtr_tun* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static __poll_t qrtr_tun_poll(struct file *filp, poll_table *wait)
{
 struct qrtr_tun *tun = filp->private_data;
 __poll_t mask = 0;

 poll_wait(filp, &tun->readq, wait);

 if (!skb_queue_empty(&tun->queue))
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
