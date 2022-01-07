
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct metapath {int mp_aheight; } ;
struct iomap {int addr; } ;
struct inode {int i_blkbits; } ;
typedef int loff_t ;


 int gfs2_iomap_get (struct inode*,int,int ,int ,struct iomap*,struct metapath*) ;
 int i_blocksize (struct inode*) ;
 int release_metapath (struct metapath*) ;

int gfs2_lblk_to_dblk(struct inode *inode, u32 lblock, u64 *dblock)
{
 struct iomap iomap = { };
 struct metapath mp = { .mp_aheight = 1, };
 loff_t pos = (loff_t)lblock << inode->i_blkbits;
 int ret;

 ret = gfs2_iomap_get(inode, pos, i_blocksize(inode), 0, &iomap, &mp);
 release_metapath(&mp);
 if (ret == 0)
  *dblock = iomap.addr >> inode->i_blkbits;

 return ret;
}
