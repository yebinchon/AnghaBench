
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct linger_work {int lreq; int pending_item; int work; } ;
struct ceph_osd_linger_request {int dummy; } ;


 int GFP_NOIO ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 struct linger_work* kzalloc (int,int ) ;
 int linger_get (struct ceph_osd_linger_request*) ;

__attribute__((used)) static struct linger_work *lwork_alloc(struct ceph_osd_linger_request *lreq,
           work_func_t workfn)
{
 struct linger_work *lwork;

 lwork = kzalloc(sizeof(*lwork), GFP_NOIO);
 if (!lwork)
  return ((void*)0);

 INIT_WORK(&lwork->work, workfn);
 INIT_LIST_HEAD(&lwork->pending_item);
 lwork->lreq = linger_get(lreq);

 return lwork;
}
