
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int base_oid; int base_oloc; } ;
struct ceph_osd_request {TYPE_1__ r_t; int r_flags; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;


 int CEPH_OSD_FLAG_WRITE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ceph_oid_copy (int *,struct ceph_object_id*) ;
 int ceph_oloc_copy (int *,struct ceph_object_locator*) ;
 int ceph_osdc_alloc_messages (struct ceph_osd_request*,int ) ;
 struct ceph_osd_request* ceph_osdc_alloc_request (struct ceph_osd_client*,int *,int,int,int ) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int ceph_osdc_start_request (struct ceph_osd_client*,struct ceph_osd_request*,int) ;
 int ceph_osdc_wait_request (struct ceph_osd_client*,struct ceph_osd_request*) ;
 int osd_req_op_copy_from_init (struct ceph_osd_request*,int ,int ,struct ceph_object_id*,struct ceph_object_locator*,int ,int ,int ) ;

int ceph_osdc_copy_from(struct ceph_osd_client *osdc,
   u64 src_snapid, u64 src_version,
   struct ceph_object_id *src_oid,
   struct ceph_object_locator *src_oloc,
   u32 src_fadvise_flags,
   struct ceph_object_id *dst_oid,
   struct ceph_object_locator *dst_oloc,
   u32 dst_fadvise_flags,
   u8 copy_from_flags)
{
 struct ceph_osd_request *req;
 int ret;

 req = ceph_osdc_alloc_request(osdc, ((void*)0), 1, 0, GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 req->r_flags = CEPH_OSD_FLAG_WRITE;

 ceph_oloc_copy(&req->r_t.base_oloc, dst_oloc);
 ceph_oid_copy(&req->r_t.base_oid, dst_oid);

 ret = osd_req_op_copy_from_init(req, src_snapid, src_version, src_oid,
     src_oloc, src_fadvise_flags,
     dst_fadvise_flags, copy_from_flags);
 if (ret)
  goto out;

 ret = ceph_osdc_alloc_messages(req, GFP_KERNEL);
 if (ret)
  goto out;

 ceph_osdc_start_request(osdc, req, 0);
 ret = ceph_osdc_wait_request(osdc, req);

out:
 ceph_osdc_put_request(req);
 return ret;
}
