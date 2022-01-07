
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int iov_base; } ;
struct ceph_buffer {TYPE_1__ vec; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int bad ;
 struct ceph_buffer* ceph_buffer_new (size_t,int ) ;
 size_t ceph_decode_32 (void**) ;
 int ceph_decode_copy (void**,int ,size_t) ;
 int ceph_decode_need (void**,void*,size_t,int ) ;
 int dout (char*,int) ;

int ceph_decode_buffer(struct ceph_buffer **b, void **p, void *end)
{
 size_t len;

 ceph_decode_need(p, end, sizeof(u32), bad);
 len = ceph_decode_32(p);
 dout("decode_buffer len %d\n", (int)len);
 ceph_decode_need(p, end, len, bad);
 *b = ceph_buffer_new(len, GFP_NOFS);
 if (!*b)
  return -ENOMEM;
 ceph_decode_copy(p, (*b)->vec.iov_base, len);
 return 0;
bad:
 return -EINVAL;
}
