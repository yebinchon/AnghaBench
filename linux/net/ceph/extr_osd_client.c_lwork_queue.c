
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linger_work {int work; int pending_item; int queued_stamp; struct ceph_osd_linger_request* lreq; } ;
struct ceph_osd_linger_request {int pending_lworks; struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {int notify_wq; } ;


 int WARN_ON (int) ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int queue_work (int ,int *) ;
 int verify_lreq_locked (struct ceph_osd_linger_request*) ;

__attribute__((used)) static void lwork_queue(struct linger_work *lwork)
{
 struct ceph_osd_linger_request *lreq = lwork->lreq;
 struct ceph_osd_client *osdc = lreq->osdc;

 verify_lreq_locked(lreq);
 WARN_ON(!list_empty(&lwork->pending_item));

 lwork->queued_stamp = jiffies;
 list_add_tail(&lwork->pending_item, &lreq->pending_lworks);
 queue_work(osdc->notify_wq, &lwork->work);
}
