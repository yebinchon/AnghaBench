
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ceph_osd_request {int dummy; } ;
struct ceph_osd_linger_request {int dummy; } ;


 int GFP_NOIO ;
 struct ceph_osd_request* alloc_linger_request (struct ceph_osd_linger_request*) ;
 scalar_t__ ceph_osdc_alloc_messages (struct ceph_osd_request*,int ) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int osd_req_op_watch_init (struct ceph_osd_request*,int ,int ,int ) ;

__attribute__((used)) static struct ceph_osd_request *
alloc_watch_request(struct ceph_osd_linger_request *lreq, u8 watch_opcode)
{
 struct ceph_osd_request *req;

 req = alloc_linger_request(lreq);
 if (!req)
  return ((void*)0);





 osd_req_op_watch_init(req, 0, 0, watch_opcode);

 if (ceph_osdc_alloc_messages(req, GFP_NOIO)) {
  ceph_osdc_put_request(req);
  return ((void*)0);
 }

 return req;
}
