
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int err; } ;
struct linger_work {TYPE_1__ error; } ;
struct ceph_osd_linger_request {int last_error; } ;


 int do_watch_error ;
 struct linger_work* lwork_alloc (struct ceph_osd_linger_request*,int ) ;
 int lwork_queue (struct linger_work*) ;
 int pr_err (char*) ;

__attribute__((used)) static void queue_watch_error(struct ceph_osd_linger_request *lreq)
{
 struct linger_work *lwork;

 lwork = lwork_alloc(lreq, do_watch_error);
 if (!lwork) {
  pr_err("failed to allocate error-lwork\n");
  return;
 }

 lwork->error.err = lreq->last_error;
 lwork_queue(lwork);
}
