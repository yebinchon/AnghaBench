
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; } ;
struct crush_bucket_uniform {int item_weight; TYPE_1__ h; } ;


 int EINVAL ;
 int bad ;
 int ceph_decode_32 (void**) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int dout (char*,void*,void*) ;

__attribute__((used)) static int crush_decode_uniform_bucket(void **p, void *end,
           struct crush_bucket_uniform *b)
{
 dout("crush_decode_uniform_bucket %p to %p\n", *p, end);
 ceph_decode_need(p, end, (1+b->h.size) * sizeof(u32), bad);
 b->item_weight = ceph_decode_32(p);
 return 0;
bad:
 return -EINVAL;
}
