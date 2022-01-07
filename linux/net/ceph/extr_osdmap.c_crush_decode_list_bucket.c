
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; } ;
struct crush_bucket_list {void** sum_weights; void** item_weights; TYPE_1__ h; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int bad ;
 void* ceph_decode_32 (void**) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int dout (char*,void*,void*) ;
 void* kcalloc (int,int,int ) ;

__attribute__((used)) static int crush_decode_list_bucket(void **p, void *end,
        struct crush_bucket_list *b)
{
 int j;
 dout("crush_decode_list_bucket %p to %p\n", *p, end);
 b->item_weights = kcalloc(b->h.size, sizeof(u32), GFP_NOFS);
 if (b->item_weights == ((void*)0))
  return -ENOMEM;
 b->sum_weights = kcalloc(b->h.size, sizeof(u32), GFP_NOFS);
 if (b->sum_weights == ((void*)0))
  return -ENOMEM;
 ceph_decode_need(p, end, 2 * b->h.size * sizeof(u32), bad);
 for (j = 0; j < b->h.size; j++) {
  b->item_weights[j] = ceph_decode_32(p);
  b->sum_weights[j] = ceph_decode_32(p);
 }
 return 0;
bad:
 return -EINVAL;
}
