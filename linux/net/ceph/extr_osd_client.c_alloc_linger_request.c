
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_osd_request {int r_base_oloc; int r_base_oid; } ;
struct TYPE_2__ {int base_oloc; int base_oid; } ;
struct ceph_osd_linger_request {TYPE_1__ t; int osdc; } ;


 int GFP_NOIO ;
 int ceph_oid_copy (int *,int *) ;
 int ceph_oloc_copy (int *,int *) ;
 struct ceph_osd_request* ceph_osdc_alloc_request (int ,int *,int,int,int ) ;

__attribute__((used)) static struct ceph_osd_request *
alloc_linger_request(struct ceph_osd_linger_request *lreq)
{
 struct ceph_osd_request *req;

 req = ceph_osdc_alloc_request(lreq->osdc, ((void*)0), 1, 0, GFP_NOIO);
 if (!req)
  return ((void*)0);

 ceph_oid_copy(&req->r_base_oid, &lreq->t.base_oid);
 ceph_oloc_copy(&req->r_base_oloc, &lreq->t.base_oloc);
 return req;
}
