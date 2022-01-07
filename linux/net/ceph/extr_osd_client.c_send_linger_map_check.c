
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_osd_linger_request {int linger_id; struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {TYPE_1__* client; int linger_map_checks; } ;
struct TYPE_2__ {int monc; } ;


 int WARN_ON (int) ;
 int ceph_monc_get_version_async (int *,char*,int ,int ) ;
 int insert_linger_mc (int *,struct ceph_osd_linger_request*) ;
 int linger_get (struct ceph_osd_linger_request*) ;
 int linger_map_check_cb ;
 struct ceph_osd_linger_request* lookup_linger_mc (int *,int ) ;
 int verify_osdc_wrlocked (struct ceph_osd_client*) ;

__attribute__((used)) static void send_linger_map_check(struct ceph_osd_linger_request *lreq)
{
 struct ceph_osd_client *osdc = lreq->osdc;
 struct ceph_osd_linger_request *lookup_lreq;
 int ret;

 verify_osdc_wrlocked(osdc);

 lookup_lreq = lookup_linger_mc(&osdc->linger_map_checks,
           lreq->linger_id);
 if (lookup_lreq) {
  WARN_ON(lookup_lreq != lreq);
  return;
 }

 linger_get(lreq);
 insert_linger_mc(&osdc->linger_map_checks, lreq);
 ret = ceph_monc_get_version_async(&osdc->client->monc, "osdmap",
       linger_map_check_cb, lreq->linger_id);
 WARN_ON(ret);
}
