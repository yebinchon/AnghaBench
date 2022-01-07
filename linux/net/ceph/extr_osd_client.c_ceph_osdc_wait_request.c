
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int dummy; } ;
struct ceph_osd_client {int dummy; } ;


 int wait_request_timeout (struct ceph_osd_request*,int ) ;

int ceph_osdc_wait_request(struct ceph_osd_client *osdc,
      struct ceph_osd_request *req)
{
 return wait_request_timeout(req, 0);
}
