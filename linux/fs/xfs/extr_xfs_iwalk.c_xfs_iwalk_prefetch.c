
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IWALK_MAX_INODE_PREFETCH ;
 int XFS_INODES_PER_CHUNK ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int round_up (unsigned int,int) ;

__attribute__((used)) static inline unsigned int
xfs_iwalk_prefetch(
 unsigned int inodes)
{
 unsigned int inobt_records;







 if (inodes == 0)
  inodes = IWALK_MAX_INODE_PREFETCH;
 inodes = min(inodes, IWALK_MAX_INODE_PREFETCH);


 inodes = round_up(inodes, XFS_INODES_PER_CHUNK);
 inobt_records = (inodes * 5) / (4 * XFS_INODES_PER_CHUNK);






 return max(inobt_records, 2U);
}
