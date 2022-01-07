
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int v4; } ;
struct inet_frag_queue {TYPE_1__ key; } ;
struct frag_v4_compare_key {int dummy; } ;


 int jhash2 (int const*,int,int ) ;

__attribute__((used)) static u32 ip4_obj_hashfn(const void *data, u32 len, u32 seed)
{
 const struct inet_frag_queue *fq = data;

 return jhash2((const u32 *)&fq->key.v4,
        sizeof(struct frag_v4_compare_key) / sizeof(u32), seed);
}
