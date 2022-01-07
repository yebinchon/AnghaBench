
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int dummy; } ;
struct gfs2_diradd {int nr_blocks; } ;


 unsigned int RES_DINODE ;
 int RES_QUOTA ;
 int RES_STATFS ;
 int gfs2_rg_blocks (struct gfs2_inode const*,int) ;

__attribute__((used)) static unsigned gfs2_trans_da_blks(const struct gfs2_inode *dip,
       const struct gfs2_diradd *da,
       unsigned nr_inodes)
{
 return da->nr_blocks + gfs2_rg_blocks(dip, da->nr_blocks) +
        (nr_inodes * RES_DINODE) + RES_QUOTA + RES_STATFS;
}
