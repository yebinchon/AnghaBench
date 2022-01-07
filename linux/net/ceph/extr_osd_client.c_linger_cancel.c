
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_linger_request {struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {int lock; } ;


 int __linger_cancel (struct ceph_osd_linger_request*) ;
 scalar_t__ __linger_registered (struct ceph_osd_linger_request*) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void linger_cancel(struct ceph_osd_linger_request *lreq)
{
 struct ceph_osd_client *osdc = lreq->osdc;

 down_write(&osdc->lock);
 if (__linger_registered(lreq))
  __linger_cancel(lreq);
 up_write(&osdc->lock);
}
