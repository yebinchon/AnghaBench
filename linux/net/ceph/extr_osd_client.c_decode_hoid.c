
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ceph_hobject_id {int pool; int * nspace; int nspace_len; int is_max; int hash; int snapid; int * oid; int oid_len; int * key; int key_len; } ;


 int EINVAL ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ceph_decode_32_safe (void**,void*,int ,int ) ;
 int ceph_decode_64_safe (void**,void*,int ,int ) ;
 int ceph_decode_8_safe (void**,void*,int ,int ) ;
 void* ceph_extract_encoded_string (void**,void*,int *,int ) ;
 int ceph_hoid_build_hash_cache (struct ceph_hobject_id*) ;
 int ceph_start_decoding (void**,void*,int,char*,int*,int *) ;
 int e_inval ;
 int pr_err (char*,int) ;

__attribute__((used)) static int decode_hoid(void **p, void *end, struct ceph_hobject_id *hoid)
{
 u8 struct_v;
 u32 struct_len;
 int ret;

 ret = ceph_start_decoding(p, end, 4, "hobject_t", &struct_v,
      &struct_len);
 if (ret)
  return ret;

 if (struct_v < 4) {
  pr_err("got struct_v %d < 4 of hobject_t\n", struct_v);
  goto e_inval;
 }

 hoid->key = ceph_extract_encoded_string(p, end, &hoid->key_len,
      GFP_NOIO);
 if (IS_ERR(hoid->key)) {
  ret = PTR_ERR(hoid->key);
  hoid->key = ((void*)0);
  return ret;
 }

 hoid->oid = ceph_extract_encoded_string(p, end, &hoid->oid_len,
      GFP_NOIO);
 if (IS_ERR(hoid->oid)) {
  ret = PTR_ERR(hoid->oid);
  hoid->oid = ((void*)0);
  return ret;
 }

 ceph_decode_64_safe(p, end, hoid->snapid, e_inval);
 ceph_decode_32_safe(p, end, hoid->hash, e_inval);
 ceph_decode_8_safe(p, end, hoid->is_max, e_inval);

 hoid->nspace = ceph_extract_encoded_string(p, end, &hoid->nspace_len,
         GFP_NOIO);
 if (IS_ERR(hoid->nspace)) {
  ret = PTR_ERR(hoid->nspace);
  hoid->nspace = ((void*)0);
  return ret;
 }

 ceph_decode_64_safe(p, end, hoid->pool, e_inval);

 ceph_hoid_build_hash_cache(hoid);
 return 0;

e_inval:
 return -EINVAL;
}
