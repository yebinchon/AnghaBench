
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {unsigned int mp_aheight; scalar_t__* mp_bh; } ;
struct gfs2_inode {int dummy; } ;


 int __fillup_metapath (struct gfs2_inode*,struct metapath*,unsigned int,int) ;

__attribute__((used)) static int fillup_metapath(struct gfs2_inode *ip, struct metapath *mp, int h)
{
 unsigned int x = 0;
 int ret;

 if (h) {

  for (x = h - 1; x > 0; x--) {
   if (mp->mp_bh[x])
    break;
  }
 }
 ret = __fillup_metapath(ip, mp, x, h);
 if (ret)
  return ret;
 return mp->mp_aheight - x - 1;
}
