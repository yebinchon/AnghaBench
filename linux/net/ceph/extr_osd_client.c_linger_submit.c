
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int osd; } ;
struct ceph_osd_linger_request {TYPE_8__ t; int linger_id; TYPE_7__* reg_req; TYPE_4__* ping_req; scalar_t__ is_watch; struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {int lock; } ;
struct ceph_osd {int dummy; } ;
struct TYPE_15__ {TYPE_6__* r_ops; } ;
struct TYPE_13__ {int cookie; } ;
struct TYPE_9__ {int cookie; } ;
struct TYPE_14__ {TYPE_5__ notify; TYPE_1__ watch; } ;
struct TYPE_12__ {TYPE_3__* r_ops; } ;
struct TYPE_10__ {int cookie; } ;
struct TYPE_11__ {TYPE_2__ watch; } ;


 int calc_target (struct ceph_osd_client*,TYPE_8__*,int) ;
 int down_write (int *) ;
 int linger_register (struct ceph_osd_linger_request*) ;
 int link_linger (struct ceph_osd*,struct ceph_osd_linger_request*) ;
 struct ceph_osd* lookup_create_osd (struct ceph_osd_client*,int ,int) ;
 int send_linger (struct ceph_osd_linger_request*) ;
 int up_write (int *) ;

__attribute__((used)) static void linger_submit(struct ceph_osd_linger_request *lreq)
{
 struct ceph_osd_client *osdc = lreq->osdc;
 struct ceph_osd *osd;

 down_write(&osdc->lock);
 linger_register(lreq);
 if (lreq->is_watch) {
  lreq->reg_req->r_ops[0].watch.cookie = lreq->linger_id;
  lreq->ping_req->r_ops[0].watch.cookie = lreq->linger_id;
 } else {
  lreq->reg_req->r_ops[0].notify.cookie = lreq->linger_id;
 }

 calc_target(osdc, &lreq->t, 0);
 osd = lookup_create_osd(osdc, lreq->t.osd, 1);
 link_linger(osd, lreq);

 send_linger(lreq);
 up_write(&osdc->lock);
}
