
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int dummy; } ;
struct ceph_osd_client {int lock; } ;


 int down_read (int *) ;
 int submit_request (struct ceph_osd_request*,int) ;
 int up_read (int *) ;

int ceph_osdc_start_request(struct ceph_osd_client *osdc,
       struct ceph_osd_request *req,
       bool nofail)
{
 down_read(&osdc->lock);
 submit_request(req, 0);
 up_read(&osdc->lock);

 return 0;
}
