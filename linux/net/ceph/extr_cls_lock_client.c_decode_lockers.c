
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ceph_locker {int dummy; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int ceph_decode_32 (void**) ;
 int ceph_decode_8 (void**) ;
 char* ceph_extract_encoded_string (void**,void*,int *,int ) ;
 int ceph_free_lockers (struct ceph_locker*,int) ;
 int ceph_start_decoding (void**,void*,int,char*,int *,int*) ;
 int decode_locker (void**,void*,struct ceph_locker*) ;
 struct ceph_locker* kcalloc (int,int,int ) ;

__attribute__((used)) static int decode_lockers(void **p, void *end, u8 *type, char **tag,
     struct ceph_locker **lockers, u32 *num_lockers)
{
 u8 struct_v;
 u32 struct_len;
 char *s;
 int i;
 int ret;

 ret = ceph_start_decoding(p, end, 1, "cls_lock_get_info_reply",
      &struct_v, &struct_len);
 if (ret)
  return ret;

 *num_lockers = ceph_decode_32(p);
 *lockers = kcalloc(*num_lockers, sizeof(**lockers), GFP_NOIO);
 if (!*lockers)
  return -ENOMEM;

 for (i = 0; i < *num_lockers; i++) {
  ret = decode_locker(p, end, *lockers + i);
  if (ret)
   goto err_free_lockers;
 }

 *type = ceph_decode_8(p);
 s = ceph_extract_encoded_string(p, end, ((void*)0), GFP_NOIO);
 if (IS_ERR(s)) {
  ret = PTR_ERR(s);
  goto err_free_lockers;
 }

 *tag = s;
 return 0;

err_free_lockers:
 ceph_free_lockers(*lockers, *num_lockers);
 return ret;
}
