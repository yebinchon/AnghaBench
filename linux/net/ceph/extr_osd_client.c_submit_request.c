
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int dummy; } ;


 int __submit_request (struct ceph_osd_request*,int) ;
 int account_request (struct ceph_osd_request*) ;
 int ceph_osdc_get_request (struct ceph_osd_request*) ;

__attribute__((used)) static void submit_request(struct ceph_osd_request *req, bool wrlocked)
{
 ceph_osdc_get_request(req);
 account_request(req);
 __submit_request(req, wrlocked);
}
