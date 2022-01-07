
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crush_bucket_tree {int num_nodes; int * node_weights; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int bad ;
 int ceph_decode_32 (void**) ;
 int ceph_decode_8_safe (void**,void*,int,int ) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int dout (char*,void*,void*) ;
 int * kcalloc (int,int,int ) ;

__attribute__((used)) static int crush_decode_tree_bucket(void **p, void *end,
        struct crush_bucket_tree *b)
{
 int j;
 dout("crush_decode_tree_bucket %p to %p\n", *p, end);
 ceph_decode_8_safe(p, end, b->num_nodes, bad);
 b->node_weights = kcalloc(b->num_nodes, sizeof(u32), GFP_NOFS);
 if (b->node_weights == ((void*)0))
  return -ENOMEM;
 ceph_decode_need(p, end, b->num_nodes * sizeof(u32), bad);
 for (j = 0; j < b->num_nodes; j++)
  b->node_weights[j] = ceph_decode_32(p);
 return 0;
bad:
 return -EINVAL;
}
