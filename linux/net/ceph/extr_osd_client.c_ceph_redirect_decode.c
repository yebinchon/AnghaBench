
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ceph_request_redirect {int oloc; } ;


 int EINVAL ;
 int ceph_decode_32 (void**) ;
 int ceph_decode_8 (void**) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int ceph_oloc_decode (void**,void*,int *) ;
 int e_inval ;
 int pr_warn (char*,...) ;

__attribute__((used)) static int ceph_redirect_decode(void **p, void *end,
    struct ceph_request_redirect *redir)
{
 u8 struct_v, struct_cv;
 u32 len;
 void *struct_end;
 int ret;

 ceph_decode_need(p, end, 1 + 1 + 4, e_inval);
 struct_v = ceph_decode_8(p);
 struct_cv = ceph_decode_8(p);
 if (struct_cv > 1) {
  pr_warn("got v %d cv %d > 1 of ceph_request_redirect\n",
   struct_v, struct_cv);
  goto e_inval;
 }
 len = ceph_decode_32(p);
 ceph_decode_need(p, end, len, e_inval);
 struct_end = *p + len;

 ret = ceph_oloc_decode(p, end, &redir->oloc);
 if (ret)
  goto out;

 len = ceph_decode_32(p);
 if (len > 0) {
  pr_warn("ceph_request_redirect::object_name is set\n");
  goto e_inval;
 }

 len = ceph_decode_32(p);
 *p += len;


 *p = struct_end;
out:
 return ret;

e_inval:
 ret = -EINVAL;
 goto out;
}
