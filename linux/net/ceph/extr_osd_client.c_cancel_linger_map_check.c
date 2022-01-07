
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_linger_request {int linger_id; struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {int linger_map_checks; } ;


 int WARN_ON (int) ;
 int erase_linger_mc (int *,struct ceph_osd_linger_request*) ;
 int linger_put (struct ceph_osd_linger_request*) ;
 struct ceph_osd_linger_request* lookup_linger_mc (int *,int ) ;
 int verify_osdc_wrlocked (struct ceph_osd_client*) ;

__attribute__((used)) static void cancel_linger_map_check(struct ceph_osd_linger_request *lreq)
{
 struct ceph_osd_client *osdc = lreq->osdc;
 struct ceph_osd_linger_request *lookup_lreq;

 verify_osdc_wrlocked(osdc);

 lookup_lreq = lookup_linger_mc(&osdc->linger_map_checks,
           lreq->linger_id);
 if (!lookup_lreq)
  return;

 WARN_ON(lookup_lreq != lreq);
 erase_linger_mc(&osdc->linger_map_checks, lreq);
 linger_put(lreq);
}
