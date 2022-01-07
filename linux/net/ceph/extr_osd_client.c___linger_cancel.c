
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_osd_linger_request {int osd; TYPE_1__* reg_req; TYPE_1__* ping_req; scalar_t__ is_watch; } ;
struct TYPE_2__ {scalar_t__ r_osd; } ;


 int cancel_linger_map_check (struct ceph_osd_linger_request*) ;
 int cancel_linger_request (TYPE_1__*) ;
 int linger_unregister (struct ceph_osd_linger_request*) ;
 int unlink_linger (int ,struct ceph_osd_linger_request*) ;

__attribute__((used)) static void __linger_cancel(struct ceph_osd_linger_request *lreq)
{
 if (lreq->is_watch && lreq->ping_req->r_osd)
  cancel_linger_request(lreq->ping_req);
 if (lreq->reg_req->r_osd)
  cancel_linger_request(lreq->reg_req);
 cancel_linger_map_check(lreq);
 unlink_linger(lreq->osd, lreq);
 linger_unregister(lreq);
}
