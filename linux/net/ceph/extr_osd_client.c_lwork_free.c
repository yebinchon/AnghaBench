
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linger_work {int pending_item; struct ceph_osd_linger_request* lreq; } ;
struct ceph_osd_linger_request {int lock; } ;


 int kfree (struct linger_work*) ;
 int linger_put (struct ceph_osd_linger_request*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void lwork_free(struct linger_work *lwork)
{
 struct ceph_osd_linger_request *lreq = lwork->lreq;

 mutex_lock(&lreq->lock);
 list_del(&lwork->pending_item);
 mutex_unlock(&lreq->lock);

 linger_put(lreq);
 kfree(lwork);
}
