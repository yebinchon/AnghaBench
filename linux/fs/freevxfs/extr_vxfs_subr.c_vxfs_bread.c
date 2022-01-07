
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int daddr_t ;


 struct buffer_head* sb_bread (int ,int ) ;
 int vxfs_bmap1 (struct inode*,int) ;

struct buffer_head *
vxfs_bread(struct inode *ip, int block)
{
 struct buffer_head *bp;
 daddr_t pblock;

 pblock = vxfs_bmap1(ip, block);
 bp = sb_bread(ip->i_sb, pblock);

 return (bp);
}
