
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {struct buffer_head** mp_bh; } ;
struct buffer_head {scalar_t__ b_size; scalar_t__ b_data; } ;
typedef int __be64 ;



__attribute__((used)) static inline const __be64 *metaend(unsigned int height, const struct metapath *mp)
{
 const struct buffer_head *bh = mp->mp_bh[height];
 return (const __be64 *)(bh->b_data + bh->b_size);
}
