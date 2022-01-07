
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int ENOMEM ;
 int* ERR_PTR (int) ;
 int GFP_NOIO ;
 int ceph_decode_32 (void**) ;
 int ceph_decode_32_safe (void**,void*,int,int ) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int e_inval ;
 int kfree (int*) ;
 int* kmalloc_array (int,int,int ) ;

__attribute__((used)) static u32 *decode_array_32_alloc(void **p, void *end, u32 *plen)
{
 u32 *a = ((void*)0);
 u32 len;
 int ret;

 ceph_decode_32_safe(p, end, len, e_inval);
 if (len) {
  u32 i;

  a = kmalloc_array(len, sizeof(u32), GFP_NOIO);
  if (!a) {
   ret = -ENOMEM;
   goto fail;
  }

  ceph_decode_need(p, end, len * sizeof(u32), e_inval);
  for (i = 0; i < len; i++)
   a[i] = ceph_decode_32(p);
 }

 *plen = len;
 return a;

e_inval:
 ret = -EINVAL;
fail:
 kfree(a);
 return ERR_PTR(ret);
}
