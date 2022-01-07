
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct metapath {unsigned int mp_aheight; int * mp_bh; } ;
struct gfs2_inode {int dummy; } ;
typedef int __be64 ;


 int be64_to_cpu (int ) ;
 int gfs2_meta_indirect_buffer (struct gfs2_inode*,unsigned int,int ,int *) ;
 int * metapointer (unsigned int,struct metapath*) ;

__attribute__((used)) static int __fillup_metapath(struct gfs2_inode *ip, struct metapath *mp,
        unsigned int x, unsigned int h)
{
 for (; x < h; x++) {
  __be64 *ptr = metapointer(x, mp);
  u64 dblock = be64_to_cpu(*ptr);
  int ret;

  if (!dblock)
   break;
  ret = gfs2_meta_indirect_buffer(ip, x + 1, dblock, &mp->mp_bh[x + 1]);
  if (ret)
   return ret;
 }
 mp->mp_aheight = x + 1;
 return 0;
}
