
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; } ;
struct TYPE_5__ {TYPE_1__ base_oloc; } ;
struct ceph_osd_request {int r_flags; TYPE_2__ r_t; struct ceph_osd_client* r_osdc; } ;
struct ceph_osd_client {TYPE_3__* osdmap; } ;
struct TYPE_6__ {int epoch; } ;


 int CEPH_OSDMAP_FULL ;
 int CEPH_OSD_FLAG_WRITE ;
 int ENOSPC ;
 int abort_request (struct ceph_osd_request*,int ) ;
 scalar_t__ ceph_osdmap_flag (struct ceph_osd_client*,int ) ;
 scalar_t__ pool_full (struct ceph_osd_client*,int ) ;
 int update_epoch_barrier (struct ceph_osd_client*,int ) ;

__attribute__((used)) static int abort_on_full_fn(struct ceph_osd_request *req, void *arg)
{
 struct ceph_osd_client *osdc = req->r_osdc;
 bool *victims = arg;

 if ((req->r_flags & CEPH_OSD_FLAG_WRITE) &&
     (ceph_osdmap_flag(osdc, CEPH_OSDMAP_FULL) ||
      pool_full(osdc, req->r_t.base_oloc.pool))) {
  if (!*victims) {
   update_epoch_barrier(osdc, osdc->osdmap->epoch);
   *victims = 1;
  }
  abort_request(req, -ENOSPC);
 }

 return 0;
}
