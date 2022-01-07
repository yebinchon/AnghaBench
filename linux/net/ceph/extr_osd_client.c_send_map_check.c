
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_osd_request {int r_tid; struct ceph_osd_client* r_osdc; } ;
struct ceph_osd_client {TYPE_1__* client; int map_checks; } ;
struct TYPE_2__ {int monc; } ;


 int WARN_ON (int) ;
 int ceph_monc_get_version_async (int *,char*,int ,int ) ;
 int ceph_osdc_get_request (struct ceph_osd_request*) ;
 int insert_request_mc (int *,struct ceph_osd_request*) ;
 struct ceph_osd_request* lookup_request_mc (int *,int ) ;
 int map_check_cb ;
 int verify_osdc_wrlocked (struct ceph_osd_client*) ;

__attribute__((used)) static void send_map_check(struct ceph_osd_request *req)
{
 struct ceph_osd_client *osdc = req->r_osdc;
 struct ceph_osd_request *lookup_req;
 int ret;

 verify_osdc_wrlocked(osdc);

 lookup_req = lookup_request_mc(&osdc->map_checks, req->r_tid);
 if (lookup_req) {
  WARN_ON(lookup_req != req);
  return;
 }

 ceph_osdc_get_request(req);
 insert_request_mc(&osdc->map_checks, req);
 ret = ceph_monc_get_version_async(&osdc->client->monc, "osdmap",
       map_check_cb, req->r_tid);
 WARN_ON(ret);
}
