
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {scalar_t__ r_osd; struct ceph_osd_client* r_osdc; } ;
struct ceph_osd_client {int lock; } ;


 int cancel_request (struct ceph_osd_request*) ;
 int down_write (int *) ;
 int up_write (int *) ;

void ceph_osdc_cancel_request(struct ceph_osd_request *req)
{
 struct ceph_osd_client *osdc = req->r_osdc;

 down_write(&osdc->lock);
 if (req->r_osd)
  cancel_request(req);
 up_write(&osdc->lock);
}
