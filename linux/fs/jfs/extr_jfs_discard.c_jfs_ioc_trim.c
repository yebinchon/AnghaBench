
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int s_blocksize_bits; int s_blocksize; } ;
struct inode {struct super_block* i_sb; } ;
struct fstrim_range {int start; int len; int minlen; } ;
struct bmap {int db_agsize; int db_mapsize; } ;
struct TYPE_3__ {struct bmap* bmap; struct inode* ipbmap; } ;


 int BLKTOAG (int,TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* JFS_SBI (struct super_block*) ;
 scalar_t__ dbDiscardAG (struct inode*,int,int) ;

int jfs_ioc_trim(struct inode *ip, struct fstrim_range *range)
{
 struct inode *ipbmap = JFS_SBI(ip->i_sb)->ipbmap;
 struct bmap *bmp = JFS_SBI(ip->i_sb)->bmap;
 struct super_block *sb = ipbmap->i_sb;
 int agno, agno_end;
 u64 start, end, minlen;
 u64 trimmed = 0;







 start = range->start >> sb->s_blocksize_bits;
 end = start + (range->len >> sb->s_blocksize_bits) - 1;
 minlen = range->minlen >> sb->s_blocksize_bits;
 if (minlen == 0)
  minlen = 1;

 if (minlen > bmp->db_agsize ||
     start >= bmp->db_mapsize ||
     range->len < sb->s_blocksize)
  return -EINVAL;

 if (end >= bmp->db_mapsize)
  end = bmp->db_mapsize - 1;




 agno = BLKTOAG(start, JFS_SBI(ip->i_sb));
 agno_end = BLKTOAG(end, JFS_SBI(ip->i_sb));
 while (agno <= agno_end) {
  trimmed += dbDiscardAG(ip, agno, minlen);
  agno++;
 }
 range->len = trimmed << sb->s_blocksize_bits;

 return 0;
}
