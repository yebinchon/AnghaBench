
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inet_frag_queue {int key; } ;
struct frag_lowpan_compare_key {int dummy; } ;


 int jhash2 (int const*,int,int ) ;

__attribute__((used)) static u32 lowpan_obj_hashfn(const void *data, u32 len, u32 seed)
{
 const struct inet_frag_queue *fq = data;

 return jhash2((const u32 *)&fq->key,
        sizeof(struct frag_lowpan_compare_key) / sizeof(u32), seed);
}
