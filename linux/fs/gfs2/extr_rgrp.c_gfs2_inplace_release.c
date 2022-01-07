
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_rgd_gh; } ;


 int gfs2_glock_dq_uninit (int *) ;
 scalar_t__ gfs2_holder_initialized (int *) ;

void gfs2_inplace_release(struct gfs2_inode *ip)
{
 if (gfs2_holder_initialized(&ip->i_rgd_gh))
  gfs2_glock_dq_uninit(&ip->i_rgd_gh);
}
