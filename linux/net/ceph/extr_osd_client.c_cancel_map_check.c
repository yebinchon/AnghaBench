
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int r_tid; struct ceph_osd_client* r_osdc; } ;
struct ceph_osd_client {int map_checks; } ;


 int WARN_ON (int) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int erase_request_mc (int *,struct ceph_osd_request*) ;
 struct ceph_osd_request* lookup_request_mc (int *,int ) ;
 int verify_osdc_wrlocked (struct ceph_osd_client*) ;

__attribute__((used)) static void cancel_map_check(struct ceph_osd_request *req)
{
 struct ceph_osd_client *osdc = req->r_osdc;
 struct ceph_osd_request *lookup_req;

 verify_osdc_wrlocked(osdc);

 lookup_req = lookup_request_mc(&osdc->map_checks, req->r_tid);
 if (!lookup_req)
  return;

 WARN_ON(lookup_req != req);
 erase_request_mc(&osdc->map_checks, req);
 ceph_osdc_put_request(req);
}
