
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {struct buffer_head** mp_bh; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __be64 ;



__attribute__((used)) static inline __be64 *metaptr1(unsigned int height, const struct metapath *mp)
{
 struct buffer_head *bh = mp->mp_bh[height];
 if (height == 0)
  return ((__be64 *)(bh->b_data + sizeof(struct gfs2_dinode)));
 return ((__be64 *)(bh->b_data + sizeof(struct gfs2_meta_header)));
}
