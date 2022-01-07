
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef scalar_t__ daddr_t ;


 int EIO ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;
 scalar_t__ vxfs_bmap1 (struct inode*,int ) ;

__attribute__((used)) static int
vxfs_getblk(struct inode *ip, sector_t iblock,
     struct buffer_head *bp, int create)
{
 daddr_t pblock;

 pblock = vxfs_bmap1(ip, iblock);
 if (pblock != 0) {
  map_bh(bp, ip->i_sb, pblock);
  return 0;
 }

 return -EIO;
}
